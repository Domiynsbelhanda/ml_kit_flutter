import 'package:flutter/material.dart';

import '../global_variable.dart';

class SubTitle extends StatelessWidget{

  final String text;
  final bool dark;
  const SubTitle({super.key, required BuildContext context, required this.text, required this.dark});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'SFProText',
          color: dark ? secondaryColor : primaryColor,
          fontSize: 17,
        ),
      ),
    );
  }
}