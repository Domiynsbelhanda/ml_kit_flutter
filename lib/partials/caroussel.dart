import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ml_kit_flutter/global_variable.dart';

class Caroussel extends StatefulWidget{
  const Caroussel({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Caroussel();
  }
}

class _Caroussel extends State<Caroussel>{

  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Column(
          children: [
            CarouselSlider(
              items: appleTV.map((item) => Image.asset(item, fit: BoxFit.cover)).toList(),
              options: CarouselOptions(
                height: 400,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              carouselController: _controller,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: appleTV.map((url) {
                int index = appleTV.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? primaryColor : secondaryColor,
                  ),
                );
              }).toList(),
            ),
          ],
        ),

        Positioned(
          top: 180,
          child: SizedBox(
            width: width(context) + 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: primaryColor,
                    size: width(context) / 10,
                  ),
                  onPressed: () => _controller.previousPage(),
                ),
                TextButton(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: primaryColor,
                    size: width(context) / 10,
                  ),
                  onPressed: () => _controller.nextPage(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}