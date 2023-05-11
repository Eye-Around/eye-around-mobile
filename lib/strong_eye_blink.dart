import 'package:flutter/material.dart';
import 'dart:async';
import 'dry_eye.dart';
import 'comfort_eye_blink.dart';


class StrongEyeBlink extends StatefulWidget {
  const StrongEyeBlink({Key? key}) : super(key: key);

  @override
  State<StrongEyeBlink> createState() => _StrongEyeBlinkState();
}

class _StrongEyeBlinkState extends State<StrongEyeBlink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('힘주어 눈 깜빡이기'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('힘주어 눈 깜빡이기',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(
              height: 40.0,
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/blink.jpg'),
                radius: 100.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
              child: Text('3초간 눈을 깜빡이세요',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
              child: Text('5번 반복',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(
              height: 40.0,
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ComfortEyeBlink()),
                  );
                },
                child: Text(
                  '다음',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                style: TextButton.styleFrom(
                  fixedSize: const Size(380, 40),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
