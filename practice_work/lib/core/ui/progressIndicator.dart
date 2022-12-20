import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatefulWidget {
  const CustomProgressIndicator({Key? key}) : super(key: key);

  @override
  _CustomProgressIndicatorState createState() =>
      _CustomProgressIndicatorState();
}

class _CustomProgressIndicatorState extends State<CustomProgressIndicator>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: animation,
        child: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset('assets/images/loading.png'),
        ),
      ),
    );
  }
}
