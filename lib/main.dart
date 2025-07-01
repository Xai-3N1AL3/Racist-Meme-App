import 'package:flutter/material.dart';
import 'package:racist_meme_app/pages/Listitemclass.dart';
import 'package:racist_meme_app/pages/Addwork.dart';
import 'package:racist_meme_app/pages/Dashboard.dart';


void main() {
  runApp(MaterialApp(
      routes:{
        '/' : (context) => Listitemclass(),
        '/add' : (context) => Addwork()
      }
  ));
}

