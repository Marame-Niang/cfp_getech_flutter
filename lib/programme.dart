import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Programme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProgrammeState();
  }
}

class ProgrammeState extends State<Programme> {

  List<dynamic> listeProgrammes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(backgroundColor: Colors.deepOrange,),
      body:   Center(
        child: this.listeProgrammes == null
            ?CircularProgressIndicator()
            :ListView.builder(
          itemCount: this.listeProgrammes == null
              ?0
              :this.listeProgrammes.length,
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
                      this.listeProgrammes[index]['nom'],
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
    afficheProgrammes();
  }

  void afficheProgrammes() {
    http.get("http://192.168.1.50:8083/programmes").then((response) {
      setState(() {
        this.listeProgrammes = json.decode(response.body);
      });
    }).catchError((error) {
      print(error);
    });
  }

}
