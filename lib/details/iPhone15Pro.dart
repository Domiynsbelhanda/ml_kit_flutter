import 'package:flutter/material.dart';

import '../global_variable.dart';
import '../partials/header.dart';

class iPhone15Pro extends StatefulWidget {
  const iPhone15Pro({super.key});

  @override
  State<StatefulWidget> createState() {
    return _iPhone15Pro();
  }
}

class _iPhone15Pro extends State<iPhone15Pro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(context: context),
            Container(
              height: width(context) / 3,
              width: width(context),
              decoration: BoxDecoration(color: primaryColor),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      'Faites reprendre votre iPhone 11 (ou plus récent) et obtenez un crédit de 190\$-770\$ sur l\'achat d\'un iPhone 15 Pro.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
