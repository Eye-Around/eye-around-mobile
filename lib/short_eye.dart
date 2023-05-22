import 'package:flutter/material.dart';
import 'package:new_project/comfort_eye_four.dart';

class ShortEye extends StatefulWidget {
  const ShortEye({Key? key}) : super(key: key);

  @override
  State<ShortEye> createState() => _ShortEyeState();
}

class _ShortEyeState extends State<ShortEye> {

  List<String> numList = ['1', '2', '3', '4', '5'];
  String numValue = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('근시안을 위한 눈 운동'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                    Icons.mood,
                    size: 100.0,
                    color: Colors.blueGrey
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Text('근시안을 위한 눈 운동',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
              child: Text('#근시 #망막건강',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 380.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('운동 효과: ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Text('먼 사물에 초점을 맞추어 눈을 움직여 근시안에 도움을 주고 눈 주변 근육의 긴장을 풀어줍니다.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('운동 순서: ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('01) 편안히 눈 깜빡이기',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                ),
                                Text('02) 화면을 멀리하고 눈 굴리기',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                ),
                                Text('03) 눈 주위 문지르기',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text('원하는 운동 횟수를 고르세요. ',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 14.0,
            //         ),
            //       ),
            //       DropdownButton<String>(
            //         style: TextStyle(
            //           backgroundColor: Colors.white,
            //           color: Colors.black,
            //         ),
            //         value: numValue,
            //         onChanged: (String? newValue) {
            //           setState(() {
            //             numValue = newValue!;
            //           });
            //         },
            //         items: numList.map<DropdownMenuItem<String>>((String value) {
            //           return DropdownMenuItem<String>(
            //             value: value, child: Text(value),
            //           );
            //         }).toList(),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    size: 40.0,
                    color: Colors.blue,
                  ),
                  Text('총 운동 시간 2:20',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),

              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ComfortEyeBlinkFour()),
                  );
                },
                child: Text(
                  '시작',
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
