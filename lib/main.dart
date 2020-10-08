import 'package:flutter/material.dart';
import 'bmi.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.green, primaryColorDark: Colors.green),
        home: InputBMI(),
      ),
    );
