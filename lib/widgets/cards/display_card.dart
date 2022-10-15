import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class DisplayCard extends StatelessWidget {
  final Color backGroundColor;
  final double? height;
  final double? width;
  final Widget child;
  final double padding;
  final double radius;
  const DisplayCard({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.padding = 0,
    this.radius = 10,
    this.backGroundColor = SColor.darkblue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: const [
            BoxShadow(
              color: SColor.black,
              offset: Offset(0, 10),
              spreadRadius: -5,
              blurRadius: 30,
            ),
          ]),
      padding: EdgeInsets.all(padding),
      width: width,
      height: height,
      child: child,
    );
  }
}
