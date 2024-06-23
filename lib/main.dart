import 'package:flutter/material.dart';
import 'package:slash/views/responsive_layout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slash Task',
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(),
    );
  }
}
