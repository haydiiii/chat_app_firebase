import 'dart:developer';
import 'package:chat_app_firebase/features/auth/presentation/cubit/auth_states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthIntial());

  Future<void> signUp({
    required String phone,
    required String name,
    required String password,
    required String email,
  }) async {
    emit(SignUpLoadingState());
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      User user = userCredential.user!;

      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'name': name,
        'email': email,
        'phone': phone,
        'uid': user.uid,
      });

      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      String errorMessage;

      switch (e.code) {
        case 'email-already-in-use':
          errorMessage = 'This email is already in use.';
          break;
        case 'weak-password':
          errorMessage = 'The password is too weak.';
          break;
        case 'invalid-email':
          errorMessage = 'The email address is invalid.';
          break;
        default:
          errorMessage = 'An unexpected error occurred. Please try again.';
      }

      emit(SignUpErrorState(error: errorMessage));
    } catch (e) {
      log("Unexpected Error: ${e.toString()}");
      emit(SignUpErrorState(
          error: 'An unexpected error occurred. Please try again.'));
    }
  }
}
