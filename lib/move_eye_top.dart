import 'package:flutter/material.dart';
import 'package:new_project/move_eye_down.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MoveEyeTop extends StatefulWidget {
  const MoveEyeTop({Key? key}) : super(key: key);

  @override
  State<MoveEyeTop> createState() => _MoveEyeState();
}

class _MoveEyeState extends State<MoveEyeTop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('상하좌우 눈 굴리기'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('상하좌우 눈 굴리기 - 상',
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
                child: Icon(
                  Icons.north,
                  size: 160.0,
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Text('눈동자를 위쪽으로 움직이세요',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(
                height: 120.0,
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
                      MaterialPageRoute(builder: (context) => MoveEyeDown()),
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
