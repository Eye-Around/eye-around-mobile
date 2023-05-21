import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {

  TextEditingController controller_name = TextEditingController();
  TextEditingController controller_email = TextEditingController();

  String changedName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('나의 정보'),
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
                          child: Text('프로필을 확인하세요',
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
                          child: Text('사용자 별명',
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
                              controller: controller_name,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: '이름',
                                hintText: '변경할 이름 입력',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Text('이메일',
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
                              controller: controller_email,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: '이메일',
                                hintText: '변경할 이메일 입력',
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 180.0,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: TextButton(
                              onPressed: (){
                                if(controller_name.text != '' && controller_email.text != '')
                                Navigator.pop(context);
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(builder: (context) => MyInfo()),
                                // );
                                else if(controller_name.text == ''){
                                  showSnackBar(context);
                                }
                                else if(controller_email.text == ''){
                                  showSnackBar2(context);
                                }
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
      Text('변경할 이름을 입력하세요',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}

void showSnackBar2(BuildContext context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('변경할 이메일을 입력하세요',
        textAlign: TextAlign.center, ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );

}