import 'package:flutter/material.dart';

TextEditingController searchController = TextEditingController();

const orange = Color.fromARGB(255, 239, 93, 20);
const white = Colors.white;
const yellow = Color.fromRGBO(250, 170, 20, 1);
const bgYellow = Color.fromARGB(126, 250, 194, 116);
const yellowText = Color.fromRGBO(250, 170, 20, 1);
const red = Color.fromRGBO(238, 95, 64, 1);
const black = Colors.black;
const purple = Color.fromRGBO(148, 158, 255, 1);
const grey = Colors.grey;
const checkOrange = Color.fromRGBO(238, 125, 66, 1);
Color cardClr2 = const Color.fromARGB(255, 243, 243, 243);

const orangeGradient = LinearGradient(
  colors: [Color.fromRGBO(250, 170, 20, 1), Color.fromRGBO(255, 215, 141, 1)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

Shader linearGradient = const LinearGradient(
  colors: [
    Color.fromRGBO(250, 166, 119, 1.0),
    Color.fromRGBO(250, 166, 119, 0.47),
  ],
).createShader(const Rect.fromLTWH(0.0, 0.0, 50.0, 50.0));

var containerShadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 3,
    blurRadius: 5,
    offset: Offset(3, 4),
  )
];

var btnColor = [
  Color.fromRGBO(238, 125, 66, 1),
  Color.fromRGBO(255, 200, 171, 1),
];

const kHeight = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight50 = SizedBox(height: 50);
const kWidth = SizedBox(width: 10);

var mHeight;
var mWidth;
