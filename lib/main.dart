import 'package:flutter/material.dart';
import 'package:activity_four/home_page.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Basic Information App",
    theme: ThemeData(
        primarySwatch: Colors.blue
    ),
    home: const HomePage(),
  ));
}