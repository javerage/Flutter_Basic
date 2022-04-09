import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final Widget child;
  final double width, height;

  const CircleContainer({
    Key? key,
    required this.child,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Center(
        child: child,
      ),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 7,
              offset: Offset(5, 5),
            ),
          ]),
    );
  }
}
