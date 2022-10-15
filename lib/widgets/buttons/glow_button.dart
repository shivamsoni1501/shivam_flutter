import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class SGlowButton extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Color glowColor;
  final Color backgroundColor;
  final VoidCallback? onClick;
  const SGlowButton(
      {Key? key,
      required this.text,
      required this.onClick,
      this.style = const TextStyle(fontSize: 20, letterSpacing: 2),
      this.glowColor = SColor.blueaccent,
      this.backgroundColor = SColor.darkblue})
      : super(key: key);

  @override
  State<SGlowButton> createState() => _SGlowButtonState();
}

class _SGlowButtonState extends State<SGlowButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (t) => setState(() {
        if (widget.onClick != null) {
          isHover = true;
        }
      }),
      onExit: (t) => setState(() {
        isHover = false;
      }),
      child: GestureDetector(
        onTap: widget.onClick,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: (isHover) ? widget.glowColor : widget.backgroundColor,
            borderRadius: BorderRadius.circular((isHover) ? 5 : 0),
            border: Border.all(
              color: widget.glowColor,
            ),
            boxShadow: [
              if (isHover)
                BoxShadow(
                  color: widget.glowColor.withAlpha(150),
                  blurRadius: 40,
                )
            ],
          ),
          child: Text(widget.text.toUpperCase(),
              style: (isHover)
                  ? widget.style.copyWith(color: SColor.white)
                  : widget.style.copyWith(color: widget.glowColor)
              // TextStyle(
              //     color: (isHover) ? SColor.white : SColor.blueaccent,
              //     fontSize: 20,
              //     letterSpacing: 2),
              ),
        ),
      ),
    );
  }
}
