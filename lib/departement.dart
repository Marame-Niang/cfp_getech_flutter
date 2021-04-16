import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Departement extends StatefulWidget {
    @override
    DepartementState createState() => DepartementState();
    }

class DepartementState extends State<Departement> {

    List<dynamic> listeDepartements;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar:   AppBar(backgroundColor: Colors.deepOrange,),
        body:   Center(
          child: this.listeDepartements == null
              ?CircularProgressIndicator()
              :ListView.builder(
                  itemCount: this.listeDepartements == null
                    ?0
                    :this.listeDepartements.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.greenAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            color: Colors.deepOrange,
                            child: Text(
                              this.listeDepartements[index]['nom'],
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            onPressed: () {
                              Text('success');
                            },
                          ),
                        ),
                      ),
                    );
                  },
                  ),
        ),
      );
    }

    @override
    void initState() {
      super.initState();
      afficheDepartements();
    }

    void afficheDepartements() {
      http.get("http://192.168.1.50:8083/departements").then((response) {
        setState(() {
          this.listeDepartements = json.decode(response.body);
        });
      }).catchError((error) {
        print(error);
      });
    }

}
