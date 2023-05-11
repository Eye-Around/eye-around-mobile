import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'home.dart';
import 'dry_eye.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eye-Around',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: LogIn(),
    );
  }
}

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('로그인'),
        centerTitle: true,
      ),
      body: Center(
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
                      Container(
                        color: Colors.white,
                        width: 200.0,
                        height: 40.0,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              // labelText: 'User ID',
                              hintText: '이메일을 입력하세요.'
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
                      Container(
                        color: Colors.white,
                        width: 200.0,
                        height: 40.0,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              // labelText: 'Password',
                              hintText: '비밀번호를 입력하세요.'
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
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()),
                        );
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
  }
}


