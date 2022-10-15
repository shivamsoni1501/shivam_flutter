import 'package:flutter/material.dart';
import 'package:shivam_flutter/constants/colors.dart';

class BackGroundView extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  const BackGroundView(
      {Key? key,
      this.backgroundColor = SColor.blue,
      this.child = const SizedBox()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColor.blue,
      body: Center(
        child: child,
      ),
    );
  }
}
