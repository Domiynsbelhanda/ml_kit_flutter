import 'package:flutter/material.dart';

import '../global_variable.dart';

class Options extends StatelessWidget{

  final String text, texte;
  final bool dark;
  const Options({super.key, required BuildContext context, required this.text, required this.dark, required this.texte});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'SFProText',
                  color: thirdColor,
                  fontSize: 16,
                ),
              ),

              const SizedBox(width: 4.0),

              Icon(
                Icons.arrow_forward_ios,
                color: thirdColor,
                size: 16,
              )
            ],
          ),

          const SizedBox(width: 16.0),

          Row(
            children: [
              Text(
                texte,
                style: TextStyle(
                  fontFamily: 'SFProText',
                  color: thirdColor,
                  fontSize: 16,
                ),
              ),

              const SizedBox(width: 4.0),

              Icon(
                Icons.arrow_forward_ios,
                color: thirdColor,
                size: 16,
              )
            ],
          ),
        ],
      ),
    );
  }
}