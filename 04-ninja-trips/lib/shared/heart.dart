import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 300), vsync: this // _HeartState class
        );
    
    // _controller.forward();
    _controller.addListener(() {
      print(_controller.value);
      print(_colorAnimation.value);
    });
    _controller.addStatusListener((status) {
      print(status); // AnimationStatus.dismissed AnimationStatus.completed
    });
    // _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red)
    //     .animate(_controller);
    _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red).animate(_controller);
    // _scaleAnimation = TweenSequence(<TweenSequenceItem<double>>[
    //   TweenSequenceItem<double>(
    //       tween: Tween<double>(begin: 1, end: 2), weight: 50),
    //   TweenSequenceItem<double>(
    //       tween: Tween<double>(begin: 2, end: 1), weight: 50),
    // ]).animate(_controller);
    _scaleAnimation = TweenSequence<double>(
  <TweenSequenceItem<double>>[
    TweenSequenceItem<double>(
      tween: Tween<double>(begin: 1, end: 2)
        .chain(CurveTween(curve: Curves.slowMiddle)),
      weight: 50.0,
    ),
    TweenSequenceItem<double>(
      tween: Tween<double>(begin: 2, end: 1)
        .chain(CurveTween(curve: Curves.slowMiddle)),
      weight: 50.0,
    ),
  ],
).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) {
        return IconButton(
          icon: ScaleTransition(
            scale: _scaleAnimation,
            child: Icon(
              Icons.favorite,
              color: _colorAnimation.value,
              size: 30,
            ),
          ),
          onPressed: () => _controller.isCompleted
              ? _controller.reverse()
              : _controller.forward(),
        );
      },
    );
  }
}
