import 'package:flutter/material.dart';
import 'package:new_project/far_move_eye.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ComfortEyeBlinkFour extends StatefulWidget {
  const ComfortEyeBlinkFour({Key? key}) : super(key: key);

  @override
  State<ComfortEyeBlinkFour> createState() => _ComfortEyeBlinkFourState();
}

class _ComfortEyeBlinkFourState extends State<ComfortEyeBlinkFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('편안히 눈 깜빡이기'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('편안히 눈 깜빡이기',
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
                child: Text('10초간 눈을 감았다 뜨세요',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
                child: Text('3회 반복',
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
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FarMoveEye()),
                    );
                  },
                  child: Text(
                    '다음',
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
