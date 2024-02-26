import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/details/iPhone15Pro.dart';

import '../global_variable.dart';

class Options extends StatelessWidget{

  final String text, texte;
  final bool dark;
  final route;
  const Options({
    super.key,
    required BuildContext context,
    required this.text,
    required this.dark,
    required this.texte,
    required this.route});

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
              GestureDetector(
                onTap: route == null ? (){} :  ()=>Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => route
                    ),
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'SFProText',
                    color: thirdColor,
                    fontSize: 16,
                  ),
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