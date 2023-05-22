import 'package:flutter/material.dart';

class CloseMoveEyeStart extends StatefulWidget {
  const CloseMoveEyeStart({Key? key}) : super(key: key);

  @override
  State<CloseMoveEyeStart> createState() => _CloseMoveEyeStartState();
}

class _CloseMoveEyeStartState extends State<CloseMoveEyeStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b282a),
      appBar: AppBar(
        title: Text('화면을 가까이하고 눈 굴리기'),
        centerTitle: true,
      ),
      body: PositionedTransitionEx(),
    );
  }
}

class PositionedTransitionEx extends StatefulWidget {
  const PositionedTransitionEx({Key? key}) : super(key: key);

  @override
  State<PositionedTransitionEx> createState() => _PositionedTransitionExState();
}

class _PositionedTransitionExState extends State<PositionedTransitionEx> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size biggest = constraints.biggest;
        return Stack(
          children: [
            PositionedTransition(
              rect: RelativeRectTween(
                begin: RelativeRect.fromSize(
                    const Rect.fromLTWH(0.0, 0.0, 100.0, 100.0),
                    biggest
                ),
                end: RelativeRect.fromSize(
                  Rect.fromLTWH(biggest.width - 100.0,
                      biggest.height - 100.0, 100.0, 100.0),
                  biggest,
                ),
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.easeInOut,
              )),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                    Icons.visibility,
                    size: 60.0,
                    color: Colors.green
                ),
              ),
            ),
            // PositionedTransition(
            //   rect: RelativeRectTween(
            //     begin: RelativeRect.fromSize(
            //         const Rect.fromLTWH(300.0, 0.0, 100.0, 100.0),
            //         biggest
            //     ),
            //     end: RelativeRect.fromSize(
            //       Rect.fromLTWH(0.0,
            //           biggest.height - 100.0, 100.0, 100.0),
            //       biggest,
            //     ),
            //   ).animate(CurvedAnimation(
            //     parent: _controller,
            //     curve: Curves.easeInOut,
            //   )),
            //   child: const Padding(
            //     padding: EdgeInsets.all(8.0),
            //     child: Icon(
            //         Icons.visibility,
            //         size: 60.0,
            //         color: Colors.green
            //     ),
            //   ),
            // ),
          ],
        );
      },
    );
  }
}
