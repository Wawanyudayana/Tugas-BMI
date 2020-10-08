import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';

class Aboutme extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InputBMI()));
            },
          ),
          title: Text("Profil"),
          centerTitle: true,
        ),
        body: MyApp(),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              MyHomePage(),
              ProfileName(),
              TextWeb(),
              RowCardOne(),
              RowCardTwo(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 90,
        child: CircleAvatar(
          radius: 95,
          backgroundImage: AssetImage('images/wawan.JPG'),
        ),
      ),
      margin: const EdgeInsets.only(top: 30.0),
    );
  }
}
class ProfileName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Kadek Wawan Yudayana',
        style: TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 20,
        ),
      ),
      margin: const EdgeInsets.only(top: 10.0),
    );
  }
}
class TextWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'kadekwawan004@gmail.com',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 15,
        ),
      ),
    );
  }
}
class RowCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.school,
                    size: 50,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text(
                    'Undiksha',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 50,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text(
                    'Alasangker',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
class RowCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.motorcycle,
                    size: 50,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text(
                    'Moto Bike',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.music_note,
                    size: 50,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text(
                    'Music',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}