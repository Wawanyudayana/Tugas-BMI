import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'aboutme.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  String nama = '';
  String dropdownValue;
  String tanggal;
  String bulan;
  String tahun;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: Text('MENGHITUNG BMI'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person_pin),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Aboutme()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/bmi1.png',
                height: 180.0,
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    new ListTile(
                      leading: const Icon(
                        Icons.person_pin,
                        color: Colors.deepOrangeAccent,
                      ),
                      title: TextField(
                        onChanged: (txt) {
                          setState(() {
                            nama = txt;
                          });
                        },
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Nama Anda',
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    new ListTile(
                      leading: const Icon(
                        Icons.wc,
                        color: Colors.deepOrangeAccent,
                      ),
                      title: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValue,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        hint: new Text(' Jenis-Kelamin'),
                        underline: Container(height: 1, color: Colors.deepOrangeAccent),
                        items: <String>['Laki-laki', 'Perempuan']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tanggal = txt;
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'tanggal',
                          icon: Icon(Icons.calendar_today, color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            bulan = txt;
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Bulan',
                          icon: Icon(Icons.calendar_today, color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tahun = txt;
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 4,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Tahun',
                          icon: Icon(Icons.calendar_today, color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(10),
                //color: Colors.blue[700],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          suffix: Text('cm'),
                          filled: true,
                          hintText: 'Tinggi',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          suffix: Text('kg'),
                          filled: true,
                          hintText: 'Berat',
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                            tinggi_badan: tinggi,
                            berat_badan: berat,
                            nama: nama,
                            kelamin: dropdownValue,
                            tanggal: tanggal,
                            bulan: bulan,
                            tahun: tahun)),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.deepOrangeAccent,
                textColor: Colors.white,
                child: Text(
                  'OK',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}