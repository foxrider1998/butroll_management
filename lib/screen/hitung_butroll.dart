import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kp/constants.dart';
import 'package:kp/constants/r.dart';
import 'package:kp/model/butroll.dart';
import 'package:kp/screen/dashboard.dart';
import 'package:kp/widget/ReusableCard.dart';
import 'package:kp/widget/kertas.dart';
import 'package:kp/widget/lebarkertas.dart';
import 'package:kp/widget/lokasi.dart';
import 'package:kp/widget/picker.dart';

var currentGsm;

final idRollController = TextEditingController();

enum Kertas {
  Medium,
  Liner,
}

enum Locate {
  DB,
  BF,
  CF,
}

enum Liner { A125, H150, F200, six275 }

enum Medium { K110, M125, S150, N200 }

int berat = 60;
int umur = 25;

class HitungPage extends StatefulWidget {
  HitungPage({Key? key}) : super(key: key);
  static const String route = "hitung";
  @override
  _HitungPageState createState() => _HitungPageState();
}

class _HitungPageState extends State<HitungPage> {
  Kertas? SelectedTypeKertas;
  Liner? SelectedLiner;
  Medium? SelectedMedium;

  Locate? SelectedLocate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppBarTitle),
      ),
      body: Container(
          child: GestureDetector(
        child: Column(children: <Widget>[
          Container(
            height: 44,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedTypeKertas = Kertas.Medium;
                      });
                    },
                    child: ReusableTab(
                      colour: SelectedTypeKertas == Kertas.Medium
                          ? kInactiveColor
                          : kThemeColor,
                      text: "Medium",
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedTypeKertas = Kertas.Liner;
                      });
                    },
                    child: ReusableTab(
                      colour: SelectedTypeKertas == Kertas.Liner
                          ? kInactiveColor
                          : kThemeColor,
                      text: "liner",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Substance(
            selected: SelectedTypeKertas,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: R.colors.primary,
              ),
              margin: EdgeInsets.all(5),
              child: Center(child: LebarKertas(selected: SelectedTypeKertas))),
          LokasiKertas(selected: SelectedLocate),
          SizedBox(
            height: 10,
          ),
          PickerDiameter(),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: idRollController,
              decoration: InputDecoration(
                hintText: "ID roll",
                labelText: "ID",
                icon: Icon(Icons.text_fields_rounded),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
          )),
          GestureDetector(
            onTap: () {
              if (SelectedTypeKertas == Kertas.Liner) {
                currentGsm = SelectedLiner;
              } else {
                currentGsm = SelectedMedium;
              }
              print("status ");
              print(SelectedLocate);
              NewButroll(username, diameterinput, lokasi);
            },
            child: Container(
              height: 60,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: Center(child: Text("Tambah")),
            ),
          ),
        ]),
      )),
    );
  }
}
