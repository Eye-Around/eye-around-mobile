import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'home.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  TextEditingController controller_id = TextEditingController();
  TextEditingController controller_pw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('로그인'),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                            Icons.visibility,
                            size: 60.0,
                            color: Colors.blueGrey
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Eye - Around',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('로그인하세요',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 40.0,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Color(0xffe0d0d0),
                              child: Icon(
                                Icons.person,
                                size: 40.0,
                                color: Colors.grey,
                              ),
                            ),
                            Form(
                              child: Theme(
                                data: ThemeData(
                                  primaryColor: Colors.teal,
                                  inputDecorationTheme: InputDecorationTheme(
                                    labelStyle: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                child: Container(
                                  color: Colors.white,
                                  width: 200.0,
                                  height: 40.0,
                                  child: TextField(
                                    controller: controller_id,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        //labelText: '이메일',
                                        hintText: '이메일을 입력하세요.'
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Color(0xffe0d0d0),
                              child: Icon(
                                Icons.key,
                                size: 40.0,
                                color: Colors.grey,
                              ),
                            ),
                            Form(
                              child: Theme(
                                data: ThemeData(
                                  primaryColor: Colors.teal,
                                  inputDecorationTheme: InputDecorationTheme(
                                    labelStyle: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                child: Container(
                                  color: Colors.white,
                                  width: 200.0,
                                  height: 40.0,
                                  child: TextField(
                                    controller: controller_pw,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        //labelText: '비밀번호',
                                        hintText: '비밀번호를 입력하세요.'
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 40.0,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: (){
                            //id와 비밀번호 일치시
                            if(controller_id.text == 'user@naver.com' && controller_pw.text == '12345678'){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home(),
                                  settings: RouteSettings(name: '/')));
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(builder: (context) => Home()),
                              // );
                            }
                            else if(controller_id.text != 'user@naver.com' && controller_pw.text == '12345678'){
                              showSnackBar2(context);
                            }
                            else if(controller_id.text == 'user@naver.com' && controller_pw.text != '12345678'){
                              showSnackBar3(context);
                            }
                            else{
                              showSnackBar(context);
                            }

                          },
                          child: Text(
                            '로그인',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          style: TextButton.styleFrom(
                              fixedSize: const Size(300, 40),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40.0,
                              margin: EdgeInsets.fromLTRB(0.0, 17.0, 0.0, 0.0),
                              child: Text('아직 회원이 아니라면',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 40.0,
                              child: TextButton(
                                onPressed: (){
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => SignUp()),
                                  );
                                },
                                child: Text(
                                  '가입하기',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  //fixedSize: const Size(80, 40),
                                  foregroundColor: Colors.green,
                                ),
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
          );
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('이메일, 비밀번호가 일치하지 않습니다',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}

void showSnackBar2(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('이메일이 일치하지 않습니다',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}

void showSnackBar3(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('비밀번호가 일치하지 않습니다',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}