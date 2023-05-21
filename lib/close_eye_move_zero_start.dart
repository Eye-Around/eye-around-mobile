import 'package:flutter/material.dart';

class CloseEyeMoveZeroStart extends StatefulWidget {
  const CloseEyeMoveZeroStart({Key? key}) : super(key: key);

  @override
  State<CloseEyeMoveZeroStart> createState() => _CloseEyeMoveZeroStartState();
}

class _CloseEyeMoveZeroStartState extends State<CloseEyeMoveZeroStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('화면을 가까이하고 눈 굴리기'),
        centerTitle: true,
      ),
      body: AnimatedPositionedEx(),
    );
  }
}

class AnimatedPositionedEx extends StatefulWidget {
  const AnimatedPositionedEx({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedEx> createState() => _AnimatedPositionedExState();
}

class _AnimatedPositionedExState extends State<AnimatedPositionedEx> {

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              AnimatedPositioned(
                width: selected ? 200.0 : 60.0,
                height: selected ? 60.0 : 200.0,
                top: selected ? 50.0 : 150.0,
                duration: Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: (){

                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Icon(
                      Icons.visibility,
                      size: 60.0,
                      color: Colors.green
                  ),
                ),
              )
            ],
          ),
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     width: 1,
          //     color: Colors.white,
          //   ),
          //   borderRadius: BorderRadius.circular(5.0),
          // ),
        ),
      ),
    );
  }
}
