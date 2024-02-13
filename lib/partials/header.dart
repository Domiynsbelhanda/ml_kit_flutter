import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/global_variable.dart';

class Header extends StatelessWidget{
  const Header({super.key, required BuildContext context});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: width(context) / 6,
      width: width(context),
      decoration: BoxDecoration(
        color: primaryColor
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/logo-white.png'
            ),

            Row(
              children: [
                Icon(
                  Icons.search,
                  size: width(context) / 13,
                  color: secondaryColor,
                ),

                const SizedBox(width: 16.0),

                Icon(
                  Icons.home,
                  size: width(context) / 13,
                  color: secondaryColor,
                ),

                const SizedBox(width: 16.0),

                Icon(
                  Icons.menu,
                  size: width(context) / 13,
                  color: secondaryColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}