// ignore: unused_import
import 'dart:math';

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
// ignore: unused_import
import 'id.dart';

class InputBMI extends StatefulWidget {
  const InputBMI({Key? key}) : super(key: key);

  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;

  late String jenisKelamin;
  late String tanggalLahir;
  late String umur;

  // ignore: unnecessary_new, prefer_final_fields
  var _nama = new TextEditingController();
  // ignore: unnecessary_new, prefer_final_fields
  var _jk = new TextEditingController();
  // ignore: unnecessary_new, prefer_final_fields
  var _tl = new TextEditingController();
  // ignore: unused_field, prefer_final_fields, unnecessary_new
  var _um = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        leading: const Icon(
          Icons.favorite,
          color: Colors.pink,
        ),
        title: const Text('MENGHITUNG BMI'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/bmi3.jpg',
              fit: BoxFit.fitWidth,
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(10),
                // color: Colors.blue[700],
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
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                            suffix: Text('cm'),
                            filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                    const SizedBox(
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
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                            suffix: Text('kg'),
                            filled: true,
                            hintText: 'Berat'),
                      ),
                    ),
                  ],
                )),

// ignore: avoid_unnecessary_containers
            Container(
              child: Row(children: [
                Expanded(
                  child: TextField(
                    controller: _nama,
                    keyboardType: TextInputType.text,
                    maxLength: 300,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                        fillColor: Colors.yellowAccent[900],
                        filled: true,
                        hintText: 'Nama Pengguna'),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextField(
                    controller: _jk,
                    keyboardType: TextInputType.text,
                    maxLength: 300,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                        fillColor: Colors.orangeAccent[900],
                        filled: true,
                        hintText: 'Jenis Kelamin'),
                  ),
                ),
              ]),
            ),

// ignore: avoid_unnecessary_containers
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _tl,
                      keyboardType: TextInputType.text,
                      maxLength: 300,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          fillColor: Colors.orangeAccent[900],
                          filled: true,
                          hintText: 'Tanggal Lahir'),
                    ),
                  )
                ],
              ),
            ),

// ignore: avoid_unnecessary_containers
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _um,
                      keyboardType: TextInputType.text,
                      maxLength: 300,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          fillColor: Colors.orangeAccent[900],
                          filled: true,
                          hintText: 'Umur Pengguna'),
                    ),
                  )
                ],
              ),
            ),

            Container(
              //height: double.infinity,
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                            tinggi_badan: tinggi,
                            berat_badan: berat,
                            nama_pengguna: _nama.text,
                            jenis_kelamin: _jk.text,
                            tanggal_lahir: _tl.text,
                            umur: _um.text)),
                  );
                },
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.black,
                // textColor: Colors.white,
                child: const Text(
                  'HITUNG BMI',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),

            Container(
              //height: double.infinity,
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HalamanAbout()),
                  );
                },
                color: Colors.white,
                textColor: Colors.black,
                child: const Text(
                  'About',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 60,
          color: Colors.black54,
          alignment: Alignment.center,
          child: const Text(
            'Developed by Meirlianah Nurita',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}

class HalamanSatu {}
