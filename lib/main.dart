import 'package:flutter/material.dart';
import 'package:flutter_application_covid/datasorce.dart';
import 'package:flutter_application_covid/homepage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Circular',
      primaryColor: primaryBlack,
    ),
    home: HomePage(),
  ));
}