import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'home.dart';

class StrongEyeBlinkZero extends StatefulWidget {
  const StrongEyeBlinkZero({Key? key}) : super(key: key);

  @override
  State<StrongEyeBlinkZero> createState() => _StrongEyeBlinkZeroState();
}

class _StrongEyeBlinkZeroState extends State<StrongEyeBlinkZero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('힘주어 눈 깜빡이기'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
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
                child: Text('5회 반복',
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
                padding: const EdgeInsets.all(8.0),
                child: LinearPercentIndicator(
                  percent: 2 / 7,
                  lineHeight: 10,
                  backgroundColor: Colors.white,
                  progressColor: Colors.blue,
                  width: 380,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder: (context) => Home()),
                    // );
                  },
                  child: Text(
                    '끝',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    fixedSize: const Size(300, 40),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}