import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'my_info.dart';
import 'change_password.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Icon(Icons.people),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      //color: Color(0xffe0d0d0),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffe0d0d0),
                        child: Icon(
                          Icons.person_outlined,
                          size: 40.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
                    child: Container(
                      height: 40.0,
                      child: Text('졸프 님',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 360.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('이번 주 달성률',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: LinearPercentIndicator(
                          percent: 2 / 7,
                          lineHeight: 20,
                          backgroundColor: Colors.green[800],
                          progressColor: Colors.green,
                          width: 340,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2일',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                            Text('7일',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('졸프 님은(는)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('일주일에 2번 눈 운동을 완료했습니다.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton.icon(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyInfo()),
                  );
                  },
                icon: Icon(
                  Icons.person,
                  size: 40.0,
                  color: Colors.blueGrey,
                ),
                label: Text(
                  '나의 정보',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey,
                  minimumSize: const Size.fromHeight(50.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton.icon(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ChangePassword()),
                  );
                },
                icon: Icon(
                  Icons.key,
                  size: 40.0,
                  color: Colors.blueGrey,
                ),
                label: Text(
                  '비밀번호 변경',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey,
                  minimumSize: const Size.fromHeight(50.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
