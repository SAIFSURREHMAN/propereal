import 'package:flutter/material.dart';
import 'package:propereal/heartc.dart';
import 'package:propereal/onboarding.dart';

import 'package:provider/provider.dart';
import 'search_screen.dart';
import 'mainscreen.dart';

void main() { 
  runApp(
    ChangeNotifierProvider(
      create: (context) => EligiblityScreenProvider(),
      child: MyApp(),
    ),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Propereal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
 void  initState() {
   Future.delayed(
        const Duration(seconds: 4),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingScreen()),
            ));
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff14142E),
      body: Center(
        child: Image.asset("assets/images/house.jpg"),
      ),
    );
  }
}
