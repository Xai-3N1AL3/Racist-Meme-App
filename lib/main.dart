import 'package:flutter/material.dart';
import 'package:racist_meme_app/pages/Listitemclass.dart';
import 'package:racist_meme_app/pages/Addwork.dart';
import 'package:racist_meme_app/pages/Dashboard.dart';
import 'package:racist_meme_app/World-Time/home.dart';
import 'package:racist_meme_app/World-Time/choose_location.dart';
import 'package:racist_meme_app/World-Time/loading.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => Listitemclass(),
      '/add' : (context) => Addwork(),

      //World Time App

      '/' : (context) => Loading(),
      '/home' : (context) => Home(),
      '/location': (context) => ChooseLocation(),

    },
    debugShowCheckedModeBanner: false,
  ));
}

