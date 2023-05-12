import 'package:flutter/material.dart';
import 'package:new_project/rub_eye_four.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FarMoveEye extends StatefulWidget {
  const FarMoveEye({Key? key}) : super(key: key);

  @override
  State<FarMoveEye> createState() => _FarMoveEyeState();
}

class _FarMoveEyeState extends State<FarMoveEye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('화면을 멀리하고 눈 굴리기'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('화면을 멀리하고 눈 굴리기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Text('5m 거리 이상에 물체를 30초동안 집중해서 보고 화면에 아이콘을 따라 눈을 움직이세요',
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
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                    Icons.visibility,
                    size: 60.0,
                    color: Colors.green
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
                      MaterialPageRoute(builder: (context) => RubEyeFour()),
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
