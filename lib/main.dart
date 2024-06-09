import 'package:flutter/material.dart';
import 'package:outlook/pages/homepage.dart';
import 'package:outlook/pages/validation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Outlook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: (DateTime(2024, 7, 31).compareTo(DateTime.now()) == 1)
          ? const Homepage()
          : const ValidationPage(),
    );
  }
}
