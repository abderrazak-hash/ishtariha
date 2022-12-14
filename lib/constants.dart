import 'package:flutter/material.dart';
import 'package:ishtariha/models/client/provinces.dart';

//! Colors
const Color white = Colors.white,
    black = Colors.black,
    whitish = Color.fromRGBO(49, 66, 186, 0.03137254901960784),
    greyish = Color(0xFFD9D9D9),
    grey = Color(0xFF828282),
    mainClr = Color(0xFF3142BA),
    red = Colors.red,
    green = Colors.green,
    blue = Colors.blue;

//! Gradients
const LinearGradient blueGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [
        0.025372087955474854, //? X
        0.302997887134552, //? X
        //! Y 0.07688882201910019,
        //! X 1,
      ],
      colors: [
        Color(0xFF34D3E8),
        mainClr,
      ],
    ),
    orangeGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [
        0.025372087955474854, //? X
        0.302997887134552, //? X
        //! Y 0.07688882201910019,
        //! X 1,
      ],
      colors: [
        Color(0xFFFEDF9C),
        Color(0xFFF5305C),
      ],
    ),
    purpleGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [
        0.025372087955474854, //? X
        0.302997887134552, //? X
        //! Y 0.07688882201910019,
        //! X 1,
      ],
      colors: [
        Color(0xFFA774FB),
        Color(0xFF6144F2),
      ],
    ),
    appBarGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [
        0.5, //? X
        1, //? X
        //! Y 0.07688882201910019,
        //! X 1,
      ],
      colors: [
        Color(0xFF34D3E8),
        mainClr,
      ],
    );

//! Dimensions
late double screenHeight, screenWidth;
double padding = 10.0, margin = 10.0, radius = 20.0;

//! Provinces
List<Province> provinces = [
  Province(
      name: 'Adrar', number: 01, cities: ['Adrar', 'Ein Aminas', 'Tindouf']),
  Province(
      name: 'Chlef', number: 02, cities: ['Chlef', 'Zeboudja', 'Oum Drouo']),
  Province(name: 'El Aghwat', number: 03, cities: ['El Aghwat', 'Sahra']),
  Province(
      name: 'Algiers',
      number: 16,
      cities: ['Algiers', 'WedSmar', 'BebZwar', 'Kouba']),
];

//! Paths
const String iconsPath = 'assets/icons';
