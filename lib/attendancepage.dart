import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
//import 'package:random_string/random_string.dart';
//import 'dart:math' show Random;

class AttPage extends StatefulWidget {
  const AttPage({Key? key}) : super(key: key);

  @override
  State<AttPage> createState() => _AttPageState();
}

String hi = "asdfgh";
var now = DateTime.now();
var formatter = DateFormat('yyyy-MM-dd');
String formattedDate = formatter.format(now);
//print(formattedDate); // 2016-01-25

//DateTime date = DateTime(now.year, now.month, now.day);
class _AttPageState extends State<AttPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Attendance Page')),
      body: Column(
        children: [
          Center(
            child: QrImage(
              data: hi + formattedDate,
              size: 250,
            ),
          ),
        ],
      ),
    );
  }
}
