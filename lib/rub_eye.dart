import 'package:flutter/material.dart';
import 'package:new_project/comfort_eye_blink.dart';
import 'package:new_project/home_page.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'home.dart';
import 'home_page.dart';
import 'dart:math' as math;
import 'dart:async';

class RubEye extends StatefulWidget {
  const RubEye({Key? key}) : super(key: key);

  @override
  State<RubEye> createState() => _RubEyeState();
}

class _RubEyeState extends State<RubEye> {

  Timer? _timer;
  bool _isRunning = false;
  int _timerCount = 20;
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
        title: Text('눈 주위 문지르기'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('눈 주위 문지르기',
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

              Container(
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/blink.jpg'),
                      radius: 100.0,
                    ),
                    Positioned(
                      top: 20.0,
                      child: Icon(
                        Icons.waving_hand,
                        size: 100.0,
                        color: Colors.green,
                      ),
                    ),
                    Positioned(
                      top: 20.0,
                      right: 5.0,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: Icon(
                          Icons.waving_hand,
                          size: 100.0,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Text('양 손을 깨끗이 씻고 눈을 가볍게 덮으세요',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
                child: Text('시계 방향과 반 시계 방향으로 천천히 돌리세요(각각 5회씩 반복)',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // SizedBox(
              //   height: 40.0,
              // ),
              //
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
                        // _timerCount = 20;
                        _buttonText = '정지';
                      });

                      _timer = Timer.periodic(Duration(seconds: 1), (timer){
                        if(_timerCount == 1){
                          _timer?.cancel();
                          Navigator.of(context).popUntil((route) => route.isFirst);
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
                    // Navigator.of(context).pushAndRemoveUntil(
                    //   MaterialPageRoute(builder: (context) => Home()), (route) => false);
                    Navigator.of(context).popUntil(ModalRoute.withName('/'));
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
