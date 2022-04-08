// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:math';

class BMIResult extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const BMIResult(
      // ignore: non_constant_identifier_names
      {required this.tinggi_badan,
      // ignore: non_constant_identifier_names
      required this.berat_badan,
      // ignore: non_constant_identifier_names
      required this.nama_pengguna,
      // ignore: non_constant_identifier_names
      required this.jenis_kelamin,
      // ignore: non_constant_identifier_names
      required this.tanggal_lahir,
      required this.umur});

  // ignore: non_constant_identifier_names
  final int tinggi_badan;
  // ignore: non_constant_identifier_names
  final int berat_badan;
  // ignore: non_constant_identifier_names
  final String nama_pengguna;
  // ignore: non_constant_identifier_names
  final String jenis_kelamin;
  // ignore: non_constant_identifier_names
  final String tanggal_lahir;
  // ignore: non_constant_identifier_names
  final String umur;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;
    if (bmi >= 28) {
      cBMI = "Obese";
    } else if (bmi >= 23) {
      cBMI = "Overweight";
    } else if (bmi >= 17.5) {
      cBMI = "Normal";
    } else {
      cBMI = "Underweight";
    }
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RESULT'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // ignore: unnecessary_new
            new Text(
              // ignore: unnecessary_brace_in_string_interps, unnecessary_string_interpolations
              '${nama_pengguna}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.lightGreenAccent,
              ),
            ),

            // ignore: unnecessary_new
            new Text(
              // ignore: unnecessary_brace_in_string_interps, unnecessary_string_interpolations
              '${jenis_kelamin}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.blue,
              ),
            ),
            // ignore: unnecessary_new
            new Text(
              // ignore: unnecessary_brace_in_string_interps, unnecessary_string_interpolations
              '${umur}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),

            Text(
              cBMI,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            const Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      // ignore: sized_box_for_whitespace
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        // ignore: deprecated_member_use
        child: RaisedButton(
          color: Colors.black54,
          child: const Text(
            'BACK',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
