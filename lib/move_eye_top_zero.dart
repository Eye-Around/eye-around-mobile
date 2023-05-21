import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'move_eye_down_zero.dart';
import 'dart:async';

class MoveEyeTopZero extends StatefulWidget {
  const MoveEyeTopZero({Key? key}) : super(key: key);

  @override
  State<MoveEyeTopZero> createState() => _MoveEyeTopZeroState();
}

class _MoveEyeTopZeroState extends State<MoveEyeTopZero> {

  Timer? _timer;
  bool _isRunning = false;
  int _timerCount = 5;
  String _buttonText = '시작';

  @override
  void dispose() {
    _timer?.cancel();

    super.dispose();
  }
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
                height: 80.0,
              ),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: LinearPercentIndicator(
              //     percent: 2 / 7,
              //     lineHeight: 10,
              //     backgroundColor: Colors.white,
              //     progressColor: Colors.blue,
              //     width: 360,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: Text('$_timerCount',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: TextButton(
                  onPressed: (){
                    _isRunning = !_isRunning;

                    if(_isRunning){

                      setState(() {
                        // _timerCount = 5;
                        _buttonText = '정지';
                      });

                      _timer = Timer.periodic(Duration(seconds: 1), (timer){
                        if(_timerCount == 1){
                          _timer?.cancel();
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MoveEyeDownZero()),
                          );
                        }

                        setState(() {
                          _timerCount--;

                        });
                      });
                    }
                    else {
                      _timer?.cancel();

                      setState(() {
                        _buttonText = '재개';
                      });
                    }
                  },
                  child: Text(
                    '$_buttonText',
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
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: TextButton(
                  onPressed: (){
                    _timer?.cancel();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MoveEyeDownZero()),
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
