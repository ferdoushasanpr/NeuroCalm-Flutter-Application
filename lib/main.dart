import 'package:flutter/material.dart';
import 'package:neurocalm/neurocalm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Neuro Calm', home: Neurocalm());
  }
}
