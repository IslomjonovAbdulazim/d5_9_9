import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Lottie Example"),
      ),
      body: Column(
        children: [
          Lottie.asset(
            "assets/1.json",
            repeat: true,
            height: 100,
            frameRate: FrameRate(130),
            errorBuilder: (context, object, trace) {
              return Text("Something went wrong");
            },
          ),
        ],
      ),
    );
  }
}
