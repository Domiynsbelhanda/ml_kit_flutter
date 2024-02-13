import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/components/options.dart';
import 'package:ml_kit_flutter/components/subtitle.dart';
import 'package:ml_kit_flutter/global_variable.dart';

import '../components/title.dart';

class Content extends StatelessWidget{

  final Map<dynamic, dynamic> data;
  const Content({super.key, required BuildContext context, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height(context) / 2,
          width: width(context),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(data['image']),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16.0,),

              data['logo'] ?
                  Image.asset(
                    data['logos'],
                    width: width(context) / 3,
                  )
                  :Titre(context: context, text: data['title'], dark: data['dark'],),

              SubTitle(context: context, text: data['subtitle'], dark: data['dark'],),

              Options(context: context, text: data['text'], dark: true, texte: data['texte'])
            ],
          ),
        ),

        Container(
          height: 16,
          decoration: BoxDecoration(
              color: secondaryColor
          ),
        ),
      ],
    );
  }
}