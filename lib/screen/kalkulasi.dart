import 'dart:async';
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
import 'package:path/path.dart' as Path;

late double width;
late double height;
void getSS(context) {
// Full screen width and height
  width = MediaQuery.of(context).size.width;
  height = MediaQuery.of(context).size.height;

// Height (without SafeArea)
  var padding = MediaQuery.of(context).viewPadding;
  double height1 = height - padding.top - padding.bottom;

// Height (without status bar)
  double height2 = height - padding.top;

// Height (without status and toolbar)
  double height3 = height - padding.top - kToolbarHeight;
}

var currentGsm;

final idRollController = TextEditingController();

enum Kertas {
  Medium,
  Liner,
}

enum Liner { A125, H150, F200, six275 }

enum Medium { K110, M125, S150, N200 }

int berat = 60;
int umur = 25;

class Kalkulasi extends StatefulWidget {
  Kalkulasi({Key? key}) : super(key: key);
  static const String route = "kalkulasi";
  @override
  _KalkulasiState createState() => _KalkulasiState();
}

class _KalkulasiState extends State<Kalkulasi> {
  Kertas? SelectedTypeKertas;
  Liner? SelectedLiner;
  Medium? SelectedMedium;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

// Height (without SafeArea)

    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppBarTitle),
      ),
      body: Container(
          child: GestureDetector(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(8),
            width: (width * 0.8),
            height: height * 0.05,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(14)),
            child: Center(
              child: Text(
                  length(substansi, diameterinput).toString().split(".").first),
            ),
          ),
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
          SizedBox(
            height: 10,
          ),
          PickerDiameter(),
        ]),
      )),
    );
  }

  length(Substance, diameter) {
    var _jenis = (Substance.toString().split('.').last.split("").first);
    var _maxlength;

    switch (_jenis.toString().toUpperCase()) {
      case "S":
        _maxlength = 5500;
        break;
      case "K":
        _maxlength = 6500;

        break;
      case "M":
        _maxlength = 7300;

        break;
      case "N":
        _maxlength = 5000;

        break;
      case "A":
        _maxlength = 7200;

        break;
      case "H":
        _maxlength = 6500;

        break;
      case "Z":
        _maxlength = 6800;

        break;
      case "F":
        _maxlength = 5000;

        break;
      case "X":
        _maxlength = 5000;

        break;
      case "E":
        _maxlength = 4000;

        break;
      default:
        _maxlength = 6000;
    }

    double luasmax = ((125 / 2) * (125 / 2)) * (22 / 7);
    double luasmin = ((11 / 2) * (11 / 2)) * (22 / 7);
    double luasnow = ((diameter / 2) * (diameter / 2)) * (22 / 7);

    double konstanta = _maxlength / (luasmax - luasmin);
    double length = konstanta * (luasnow - luasmin);
    print(length);
    return length;
  }
}
