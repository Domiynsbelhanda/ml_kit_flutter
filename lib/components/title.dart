import 'package:flutter/material.dart';

import '../global_variable.dart';

class Titre extends StatelessWidget{

  final String text;
  final bool dark;
  const Titre({super.key, required BuildContext context, required this.text, required this.dark});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'SFProText',
        color: dark ? secondaryColor : primaryColor,
        fontSize: 27,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}