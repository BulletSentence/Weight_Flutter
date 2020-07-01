import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

  TextEditingController wei = new TextEditingController();
  TextEditingController hei = new TextEditingController();

  String info = "Type your data";

  void _reset () {
    hei.text = "";
    wei.text = "";
    info = "Type your data";
  }

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weight Manager"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                _reset();
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.person_pin, size: 120, color: Colors.redAccent),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Your weight (kg)",
                  labelStyle: TextStyle(color: Colors.redAccent),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                ),
                controller: wei,
              ),
              Container(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Your Height",
                  labelStyle: TextStyle(color: Colors.redAccent),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                ),
                controller: hei,
              ),
              Container(
                height: 55.0,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: Colors.red,
              ),
              Container(
                height: 20.0,
              ),
              Text(
                info,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                ),
              )
            ],
          ),
        ));
  }
}
