import 'package:flutter/material.dart';

class AnimatedImagesWidget extends StatefulWidget {
  const AnimatedImagesWidget({super.key});

  @override
  AnimatedImagesWidgetState createState() => AnimatedImagesWidgetState();
}

class AnimatedImagesWidgetState extends State<AnimatedImagesWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  int _currentIndex = 0;

  final _imageList = [
    "images/screen1.png",
    "images/screen2.png",
    "images/screen3.png",
    "images/screen4.png",
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1, end: 1).animate(_animationController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _currentIndex = (_currentIndex + 1) % _imageList.length;
          });
          _animationController.reset();
          _animationController.forward();
        }
      });
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: _animation,
          child: Image.asset(
            _imageList[_currentIndex],
            width: 300,
          ),
        );
      },
    );
  }
}
