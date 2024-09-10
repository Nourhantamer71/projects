import 'package:flutter/material.dart';

void main() {
  runApp(const CounterPoints());
}

class CounterPoints extends StatefulWidget {
  const CounterPoints({super.key});

  @override
  State<CounterPoints> createState() => _CounterPointsState();
}

class _CounterPointsState extends State<CounterPoints> {
  int teamApoints = 0;
  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 600,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '$teamApoints',
                          style: const TextStyle(
                              fontSize: 150, fontWeight: FontWeight.w400),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamApoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamApoints += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamApoints += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 600,
                  child: VerticalDivider(
                    indent: 52,
                    endIndent: 45,
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 600,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '$teamBpoints',
                          style: const TextStyle(
                              fontSize: 150, fontWeight: FontWeight.w400),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBpoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBpoints += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBpoints += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
