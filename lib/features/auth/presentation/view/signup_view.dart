import 'dart:developer';

import 'package:chat_app_firebase/core/functions/app_routing.dart';
import 'package:chat_app_firebase/core/functions/custom_load_dialog.dart';
import 'package:chat_app_firebase/core/widget/show_error_dialog.dart';
import 'package:chat_app_firebase/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:chat_app_firebase/features/auth/presentation/cubit/auth_states.dart';
import 'package:chat_app_firebase/features/auth/presentation/view/widget/sign_up_body.dart';
import 'package:chat_app_firebase/features/layout/presentation/view/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocListener<AuthCubit, AuthStates>(
        listener: (context, state) {
          if (state is SignUpSuccessState) {
            pop(context);

            pushWithReplacement(context, const BottomNavBar());
          } else if (state is SignUpErrorState) {
            log(state.error);
            showErrorDialog(context: context, message: state.error);
            pop(context);
          } else {
            showLoadingDialog(context);
          }
        },
        child: const Scaffold(
          body: SafeArea(child: SignUpBody()),
        ),
      ),
    );
  }
}
