import 'package:flutter/material.dart';
import 'package:revv_commerce/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Practice",
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(),
      ),
    );
  }
}
