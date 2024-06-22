import 'package:flutter/material.dart';
import 'package:slash/views/home_screen_mobile.dart';
import 'package:slash/views/home_screen_web.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Slash Task',
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return HomeScreenMobile();
        } else {
          return const HomeScreenWeb();
        }
      },
    );
  }
}
