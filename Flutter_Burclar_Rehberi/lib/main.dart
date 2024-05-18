import 'package:flutter/material.dart';
import 'package:flutter_burclar_rehberi/burc_listesi.dart';


void main() {
  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burclar Rehberi',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Burclar Rehberi'),
          backgroundColor: Colors.pink,
          
        ),

         body: BurcListesi()),

      
    );
  }
}
