import 'dart:developer';

import 'package:chat_app_firebase/features/splash_view/presentation/view/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyA-rEU-MRIyNrx8__8mjT6wxbQ0LexXnBQ",
    appId: 'com.example.chat_app_firebase',
    messagingSenderId: '616002363932',
    projectId: 'whats-app-1584a',
  ));log('Firebase Initialized Successfully');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(720, 1421),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                textTheme: GoogleFonts.interTextTheme(),
              ),
              home: const SplashView());
        });
  }
}
