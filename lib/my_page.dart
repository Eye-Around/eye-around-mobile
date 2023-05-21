import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'my_info.dart';
import 'change_password.dart';
import 'sign_up.dart';
import 'home_page.dart';
import 'login.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  String userName = '졸프';

  int actCount = 0;

  void incrementCounter(){
    setState(() {
      if (actCount == 0){
        actCount++;
      }
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  void getName(){
    SignUp signUp = SignUp();
    //signUp.inputName;
  }

  void getCurrentActivityCount (){
  }

  void showLogoutPopup(){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          content: Text("로그아웃 하시겠습니까?",
            // style: TextStyle(
            //   color: Colors.black,
            //   fontSize: 16.0,
            //   fontWeight: FontWeight.bold,
            // ),
          ),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LogIn(),
                      settings: RouteSettings(name: '/')));
                },
                child: Text("예",
                  // style: TextStyle(
                  // color: Colors.black,
                  // fontSize: 16.0,
                  // fontWeight: FontWeight.bold,
                  // ),
                ),
            ),
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("아니오",
                // style: TextStyle(
                //   color: Colors.black,
                //   fontSize: 16.0,
                //   fontWeight: FontWeight.bold,
                // ),
              ),
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Icon(Icons.people),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              showLogoutPopup();
            },
            icon: Icon(
                Icons.logout)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
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
                        child: Text('$userName 님',
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
                          padding: const EdgeInsets.all(16.0),
                          child: LinearPercentIndicator(
                            percent: actCount / 7,
                            lineHeight: 20,
                            backgroundColor: Colors.green[800],
                            progressColor: Colors.green,
                            width: 320,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('$actCount일',
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
                        Text('$userName 님은(는)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('일주일에 $actCount번 눈 운동을 완료했습니다.',
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
                    incrementCounter();
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
                    incrementCounter();
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
      ),
    );
  }
}
