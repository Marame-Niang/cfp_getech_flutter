
import 'package:cfp_flutter/accueil.dart';
import 'package:cfp_flutter/departement.dart';
import 'package:cfp_flutter/formation.dart';
import 'package:cfp_flutter/main-drawer.dart';
import 'package:cfp_flutter/programme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: MainDrawer(),
    appBar: AppBar(title: Text('CFP-GETECH'), backgroundColor: Colors.deepOrange,),
    body: Center(child:
    Text('Bienvenue dans CFP-GETECH', style: TextStyle(fontSize: 22,color: Colors.deepOrange,),),),
    );
  }
  
}