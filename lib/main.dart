import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'View/home_view.dart';
import 'view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSplash = true;
  showSplashScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        showSplash = false;
      });
    });
  }

  @override
  void initState() {
    showSplashScreen();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'मूलक परीक्षण',
      theme: ThemeData(
          fontFamily: DevanagariFonts.hind().fontFamily,
          primarySwatch: Colors.purple,
          canvasColor: Colors.purple.shade50),
      debugShowCheckedModeBanner: false,
      home: showSplash ? const SplashScreen() : const HomeView(),
    );
  }
}
