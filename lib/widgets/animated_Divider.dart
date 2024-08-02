import 'package:flutter/material.dart';

class MovingDotAnimation extends StatefulWidget {
  @override
  _MovingDotAnimationState createState() => _MovingDotAnimationState();
}

class _MovingDotAnimationState extends State<MovingDotAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Duration for one complete left-to-right animation
    const animationDuration = Duration(seconds: 6);

    _controller = AnimationController(
      vsync: this,
      duration: animationDuration,
    );

    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.yellow,
      ),
      width: 150,
      height: 7,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Stack(
            children: [
              Positioned(
                left: 150 * _animation.value - 2.5,
                top: 0,
                child: Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
