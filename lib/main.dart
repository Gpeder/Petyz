import 'package:flutter/material.dart';
import 'package:petyz/themes/dark/theme.dart';
import 'package:petyz/themes/light/theme.dart';
import 'package:petyz/view/home.dart';

void main() {
  runApp(const PetyzApp());
}

class PetyzApp extends StatelessWidget {
  const PetyzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petyz',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}