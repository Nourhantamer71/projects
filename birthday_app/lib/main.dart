import 'package:flutter/material.dart';

void main() {
  runApp(const BirthdayApp());
}

class BirthdayApp extends StatelessWidget {
  const BirthdayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffD2BCD5),
        body: Image(
          image: AssetImage('images/birthday_card.png'),
        ),
      ),
    );
  }
}
