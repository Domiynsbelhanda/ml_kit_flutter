import 'package:flutter/material.dart';

double width(context){
  return MediaQuery.of(context).size.width;
}


double height(context){
  return MediaQuery.of(context).size.height;
}

Color primaryColor = const Color.fromRGBO(22, 22, 23, 0.8);
Color secondaryColor = const Color.fromRGBO(255, 255, 255, 0.5);
Color thirdColor = const Color(0xFF2997FF);

final List<String> appleTV = [
  'assets/images/alerte-rouge.jpeg',
  'assets/images/une-vie.jpg',
  'assets/images/flora-and-son.jpg',
];


List data = [
  {
    'name': 'iphone-15-pro',
    'image': 'assets/images/iphone-15-pro.jpg',
    'title': 'iPhone 15 Pro',
    'subtitle': 'Titane. Si robuste. Si léger. Si Pro.',
    'text': 'En savoir plus',
    'texte': 'Acheter',
    'dark': true,
    'logo': false
  },

  {
    'name': 'iphone-15',
    'image': 'assets/images/iphone-15.jpg',
    'title': 'iPhone 15',
    'subtitle': 'Nouvel appareil photo. Nouveau design. Rémerveillement.',
    'text': 'En savoir plus',
    'texte': 'Acheter',
    'dark': false,
    'logo': false
  },

  {
    'name': 'iphone-15',
    'image': 'assets/images/apple_watch.jpg',
    'title': 'Apple Watch',
    'subtitle': 'Clairement brillante.',
    'text': 'En savoir plus',
    'texte': 'Acheter',
    'dark': true,
    'logo': true,
    'logos': 'assets/images/logo_apple_watch_series_9.png'
  }
];