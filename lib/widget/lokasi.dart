import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kp/constants.dart';
import 'package:kp/model/butroll.dart';
import 'package:kp/screen/hitung_butroll.dart';
import 'package:kp/widget/ReusableCard.dart';

enum Lokasi {
  DB,
  BF,
  CF,
}

const Map<Lokasi, String> LokasiName = {
  Lokasi.DB: "DB",
  Lokasi.BF: "BF",
  Lokasi.CF: "CF",
};

class LokasiKertas extends StatefulWidget {
  LokasiKertas({Key? key, required this.selected}) : super(key: key);
  final selected;
  @override
  _LokasiKertasState createState() => _LokasiKertasState();
}

class _LokasiKertasState extends State<LokasiKertas> {
  Lokasi? SelectedLokasi;

  get selected => widget.selected;

  @override
  Widget build(BuildContext context) {
    lokasi = SelectedLokasi;

    return (Container(
        child: GestureDetector(
      child: Column(children: <Widget>[
        Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLokasi = Lokasi.DB;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLokasi == Lokasi.DB
                        ? kInactiveColor
                        : kThemeColor,
                    text: Lokasi.DB.toString().split('.').last,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLokasi = Lokasi.BF;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLokasi == Lokasi.BF
                        ? kInactiveColor
                        : kThemeColor,
                    text: Lokasi.BF.toString().split('.').last,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLokasi = Lokasi.CF;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLokasi == Lokasi.CF
                        ? kInactiveColor
                        : kThemeColor,
                    text: Lokasi.CF.toString().split('.').last,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    )));
  }
}
