import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ml_kit_flutter/global_variable.dart';
import 'package:ml_kit_flutter/partials/caroussel.dart';
import 'package:ml_kit_flutter/partials/header.dart';
import 'package:ml_kit_flutter/partials/Content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APPLE.COM',
      theme: ThemeData(
        fontFamily: 'SFProText',
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: secondaryColor,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [

                Header(context: context),

                Column(
                  children: data.map((e){
                    return Content(context: context, data: e);
                  }).toList(),
                ),

                const Caroussel(),

                const SizedBox(height: 24.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}