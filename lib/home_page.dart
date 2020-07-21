import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Color> _animationOne;
  Animation<Color> _animationTwo;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _animationOne = ColorTween(begin: Colors.grey, end: Colors.grey.shade100)
        .animate(_controller);
    _animationTwo = ColorTween(begin: Colors.grey.shade100, end: Colors.grey)
        .animate(_controller);

    _controller.forward();

    _controller.addListener(() {
      if (_controller.status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (_controller.status == AnimationStatus.dismissed) {
        _controller.forward();
      }
      this.setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              colors: [
                _animationOne.value,
                _animationTwo.value,
              ],
            ).createShader(rect);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 100.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: 50.0,
                height: 10.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: 100.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: 50.0,
                height: 10.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: 100.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: 50.0,
                height: 10.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
