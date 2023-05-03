import 'package:calculadora_simple/ui/presentation/homeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      home: home_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
