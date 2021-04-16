import 'package:flutter/material.dart';
class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:   AppBar(backgroundColor: Colors.deepOrange,),
        body:   Center(child: Text('ACCUEIL', style: TextStyle(fontSize: 22),),),
    );
  }
}


