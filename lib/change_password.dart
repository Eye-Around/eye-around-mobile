import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  TextEditingController controller_pw = TextEditingController();
  TextEditingController controller_pwNew = TextEditingController();
  TextEditingController controller_pwNewConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('비밀번호 변경'),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('비밀번호 변경',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 80.0,
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Text('기존 비밀번호',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 14.0,
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
                                // labelText: '기존 비밀번호',
                                hintText: '기존 비밀번호를 입력하세요',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Text('새로운 비밀번호',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 14.0,
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
                              controller: controller_pwNew,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: '새로운 비밀번호',
                                hintText: '8자 이상, 특수문자 포함',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Text('비밀번호 확인',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 14.0,
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
                              controller: controller_pwNewConfirm,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: '비밀번호 확인',
                                hintText: '8자 이상, 특수문자 포함',
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 80.0,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: TextButton(
                              onPressed: (){
                                if(controller_pw.text != '' && controller_pwNew.text != '' &&
                                    controller_pwNew.text == controller_pwNewConfirm.text &&
                                    controller_pwNew.text != controller_pw.text){
                                  Navigator.pop(context);
                                }
                                else if(controller_pw.text == ''){
                                  showSnackBar(context);
                                }
                                else if(controller_pwNew.text == ''){
                                  showSnackBar2(context);
                                }
                                else if(controller_pwNew.text != controller_pwNewConfirm.text){
                                  showSnackBar3(context);
                                }
                                else if(controller_pwNew.text == controller_pw.text){
                                  showSnackBar4(context);
                                }
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(builder: (context) => MyInfo()),
                                // );
                              },
                              child: Text(
                                '저장',
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
      Text('기존 비밀번호를 입력하세요',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}

void showSnackBar2(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('새로운 비밀번호를 입력하세요',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}

void showSnackBar3(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('비밀번호가 같지 않습니다',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}

void showSnackBar4(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('기존 비밀번호와 같습니다. 새로운 비밀번호를 입력하세요',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}