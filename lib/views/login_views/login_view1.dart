import 'package:flutter/material.dart';
import 'package:shivam_flutter/widgets/cards/display_card.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../widgets/buttons/glow_button.dart';

class Loginview1 extends StatefulWidget {
  final double width;
  final VoidCallback onSubmit;
  final bool enabled;
  final String route;
  const Loginview1(
      {Key? key,
      this.width = 400,
      required this.onSubmit,
      this.enabled = true,
      this.route = '/views/loginview-0'})
      : super(key: key);

  @override
  State<Loginview1> createState() => _Loginview1State();
}

class _Loginview1State extends State<Loginview1> {
  final TextEditingController _idC = TextEditingController();

  final TextEditingController _passwordC = TextEditingController();

  final _fnodepass = FocusNode();

  getInputbox(
      String lable, TextEditingController controller, BuildContext context,
      {isId = false}) {
    return TextFormField(
      focusNode: (isId) ? null : _fnodepass,
      onFieldSubmitted: (s) {
        if (isId) {
          FocusScope.of(context).requestFocus(_fnodepass);
        }
      },
      enabled: widget.enabled,
      obscureText: (isId) ? false : true,
      controller: controller,
      cursorColor: SColor.white,
      style: const TextStyle(color: SColor.white),
      decoration: InputDecoration(
        labelText: lable,
        labelStyle: const TextStyle(color: SColor.white),
        floatingLabelStyle: const TextStyle(color: SColor.blueaccent),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: SColor.white),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: SColor.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: SColor.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DisplayCard(
      padding: 40,
      // height: 600,
      width: 400,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Login',
            style: STStyle.headline2,
          ),
          const SizedBox(height: 30),
          getInputbox('Username', _idC, context, isId: true),
          const SizedBox(height: 10),
          getInputbox('Password', _passwordC, context),
          const SizedBox(height: 40),
          SGlowButton(
            text: 'Submit',
            onClick: (widget.enabled) ? widget.onSubmit : null,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
