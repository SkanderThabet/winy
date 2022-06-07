import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashPage(),
  ));
}
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    color: const Color(0xFF80C038),
  alignment: Alignment.center,
    ),
    );
  }
}


