import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Formation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormationState();
  }
}

class FormationState extends State<Formation> {

  List<dynamic> listeFormations;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(backgroundColor: Colors.deepOrange,),
      body:   Center(
        child: this.listeFormations == null
            ?CircularProgressIndicator()
            :ListView.builder(
          itemCount: this.listeFormations == null
              ?0
              :this.listeFormations.length,
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
                      this.listeFormations[index]['numero'],
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
    afficheFormations();
  }

  void afficheFormations() {

    http.get("http://192.168.1.50:8083/formations").then((response) {
      setState(() {
        this.listeFormations = json.decode(response.body);
      });
    }).catchError((error) {
      print(error);
    });
  }

}
