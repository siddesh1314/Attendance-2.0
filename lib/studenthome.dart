import 'package:flutter/material.dart';
import 'package:epitome2/attendancepage.dart';

class Shome extends StatelessWidget {
  Shome({Key? key}) : super(key: key);

  final TextStyle ProfileStyle = TextStyle(color: Colors.white, fontSize: 20);
  final TextStyle ProfileStyle2 = TextStyle(color: Colors.white, fontSize: 18);
  final TextStyle ProfileStyle3 = TextStyle(color: Colors.white, fontSize: 30);
  final TextStyle ProfileStyle4 =
      TextStyle(color: Colors.white70, fontSize: 15);
  final TextStyle ProfileStyle5 = TextStyle(color: Colors.white, fontSize: 25);
  final TextStyle ProfileStyle6 =
      TextStyle(color: Colors.blueAccent, fontSize: 20);
  final TextStyle ProfileStyle7 =
      TextStyle(color: Colors.blueAccent, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: ElevatedButton(
              child: Text(
                'Generate QR ',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AttPage()),
                );
              },
            ),
          ),
          SizedBox(height: 100),
          Card(
            elevation: 10,
            color: Colors.blueAccent,
            child: Container(
              height: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'ATTENDANCE',
                          style: ProfileStyle,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 27.0),
                          child: Column(
                            children: [
                              Text(
                                '85%',
                                style: ProfileStyle3,
                              ),
                              Text(
                                'Percentage',
                                style: ProfileStyle4,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 27.0),
                          child: Column(
                            children: [
                              Text(
                                '256',
                                style: ProfileStyle3,
                              ),
                              Text(
                                'Classes attended',
                                style: ProfileStyle4,
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '50',
                              style: ProfileStyle3,
                            ),
                            Text(
                              'Classes missed',
                              style: ProfileStyle4,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 37.0),
                          child: Column(
                            children: [
                              Text(
                                'Present - 5/6',
                                style: ProfileStyle,
                              ),
                              Text(
                                'Today',
                                style: ProfileStyle4,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 37.0),
                          child: Column(
                            children: [
                              Text(
                                '78%',
                                style: ProfileStyle5,
                              ),
                              Text(
                                'Class average',
                                style: ProfileStyle4,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
