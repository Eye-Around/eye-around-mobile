import 'package:flutter/material.dart';
import 'package:new_project/main.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController controller_name = TextEditingController();
  TextEditingController controller_email = TextEditingController();
  TextEditingController controller_pw = TextEditingController();
  TextEditingController controller_pwConfirm = TextEditingController();

  String inputName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('회원가입'),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Container(
                child: Form(
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
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                          child: Text('Hello,',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
                          child: Text('Let`s Eye - Around!',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('회원가입',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Text('이름',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Container(
                            color: Colors.white,
                            width: 380.0,
                            height: 40.0,
                            child: TextField(
                              controller: controller_name,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: '이름',
                                hintText: '한글 2자 이상',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Text('이메일',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Container(
                            color: Colors.white,
                            width: 380.0,
                            height: 40.0,
                            child: TextField(
                              controller: controller_email,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: '이메일',
                                hintText: '인증 가능한 이메일 주소',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Text('비밀번호',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Container(
                            color: Colors.white,
                            width: 380.0,
                            height: 40.0,
                            child: TextField(
                              controller: controller_pw,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: '비밀번호',
                                hintText: '8자 이상, 특수문자 포함',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Text('비밀번호 확인',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Container(
                            color: Colors.white,
                            width: 380.0,
                            height: 40.0,
                            child: TextField(
                              controller: controller_pwConfirm,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: '비밀번호 확인',
                                hintText: '8자 이상, 특수문자 포함',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: TextButton(
                              onPressed: (){

                                inputName = controller_name.text;

                                if(controller_name.text != '' && controller_email.text != '' &&
                                    controller_pw.text != '' && controller_pwConfirm.text == controller_pw.text){
                                  Navigator.pop(context);
                                }
                                else if(controller_name.text == ''){
                                  showSnackBar(context);
                                }
                                else if(controller_email.text == ''){
                                  showSnackBar2(context);
                                }
                                else if(controller_pw.text == ''){
                                  showSnackBar3(context);
                                }
                                else if(controller_pwConfirm.text != controller_pw.text){
                                  showSnackBar4(context);
                                }
                                else{
                                  showSnackBar5(context);
                                }
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(builder: (context) => LogIn()),
                                // );
                              },
                              child: Text(
                                '회원가입',
                                style: TextStyle(
                                    fontSize: 16.0
                                ),
                              ),
                              style: TextButton.styleFrom(
                                fixedSize: const Size(380, 40),
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
      Text('이름을 입력하세요',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}

void showSnackBar2(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('이메일을 입력하세요',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}

void showSnackBar3(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('비밀번호를 입력하세요',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}

void showSnackBar4(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('비밀번호가 같지 않습니다',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}

void showSnackBar5(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('회원가입을 진행할 수 없습니다',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}