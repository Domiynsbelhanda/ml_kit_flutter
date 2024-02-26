import 'package:flutter/material.dart';

import '../components/options.dart';
import '../components/subtitle.dart';
import '../global_variable.dart';

class iPhone15Content extends StatefulWidget{
  const iPhone15Content({super.key});

  @override
  State<StatefulWidget> createState() {
    return _iPhone15Content();
  }
}

class _iPhone15Content extends State<iPhone15Content>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: height(context) / 10,
          decoration: const BoxDecoration(
            color: Colors.black
          ),
        ),
        Container(
          height: height(context) / 1.5,
          width: width(context),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/iphone_15_content.jpg'
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16.0,),

              SubTitle(context: context, text: 'Belhanda', dark: true,),

              // Options(context: context, text: data['text'], dark: true, texte: data['texte'], route: data['page'])
            ],
          ),
        ),

        Container(
          height: height(context) / 10,
          decoration: const BoxDecoration(
              color: Colors.black
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