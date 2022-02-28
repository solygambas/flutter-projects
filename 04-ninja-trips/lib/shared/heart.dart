import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 500), vsync: this // _HeartState class
        );
    _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(_controller);
    // _controller.forward();
    _controller.addListener(() {
      print(_controller.value);
      print(_colorAnimation.value);
    });
    _controller.addStatusListener((status) {
      print(status); // AnimationStatus.dismissed AnimationStatus.completed
    });
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
          icon: Icon(
            Icons.favorite,
            color: _colorAnimation.value,
            size: 30,
          ),
          onPressed: () => _controller.isCompleted
              ? _controller.reverse()
              : _controller.forward(),
        );
      },
    );
  }
}
