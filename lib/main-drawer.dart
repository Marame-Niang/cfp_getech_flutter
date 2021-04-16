import 'package:cfp_flutter/Accueil.dart';
import 'package:cfp_flutter/departement.dart';
import 'package:cfp_flutter/formation.dart';
import 'package:cfp_flutter/main.dart';
import 'package:cfp_flutter/programme.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent
            ),
            child: Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/fs.jpg'),
              ),
            ),
          ),
          ListTile(
              title: Text('Accueil', style: TextStyle(fontSize: 18,color: Colors.deepOrange),),
              onTap: (){
                //Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
              }
          ),
          Divider(),
          ListTile(
            title: Text('Departement', style: TextStyle(fontSize: 18,color: Colors.deepOrange),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Departement()));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Formation', style: TextStyle(fontSize: 18,color: Colors.deepOrange),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Formation()));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Programme', style: TextStyle(fontSize: 18,color: Colors.deepOrange),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Programme()));
            },
          )
        ],
      ),
    );
  }
}
