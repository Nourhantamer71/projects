// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(BussinessCardApp());
}

class BussinessCardApp extends StatelessWidget {
  const BussinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
              Image(
                image: AssetImage('images/tharwat.png'),
              ),*/

            CircleAvatar(
              radius: 101,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/tharwat.png'),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Nourhan Tamer',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Pacifico',
                color: Colors.white,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF6C8090)),
            ),
            Divider(
              color: Color(0xFF6C8090),
              height: 9,
              thickness: 0.5,
              indent: 50,
              endIndent: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                height: 59,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Icon(
                        Icons.phone,
                        color: Color(0xFF2B475E),
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 32),
                      child: Text(
                        '(+20) 1093952246',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                height: 59,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Icon(
                        Icons.mail,
                        color: Color(0xFF2B475E),
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 32),
                      child: Text(
                        'nourhantamer104@gmail.com',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(
                  Icons.face,
                  color: Color(0xFF2B475E),
                  size: 24,
                ),
                title: const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    'programming',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
