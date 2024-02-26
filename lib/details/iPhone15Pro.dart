import 'package:flutter/material.dart';

import '../partials/header.dart';

class iPhone15Pro extends StatefulWidget{
  const iPhone15Pro({super.key});

  @override
  State<StatefulWidget> createState() {
    return _iPhone15Pro();
  }
}

class _iPhone15Pro extends State<iPhone15Pro>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(context: context),
          ],
        ),
      ),
    );
  }
}