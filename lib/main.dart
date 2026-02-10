import 'package:flutter/material.dart';
import 'package:petyz/themes/dark/theme.dart';
import 'package:petyz/themes/light/theme.dart';
import 'package:petyz/view/root/root_page.dart';

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
      home: RootPage(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
