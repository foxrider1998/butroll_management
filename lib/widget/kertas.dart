import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kp/constants.dart';
import 'package:kp/model/butroll.dart';
import 'package:kp/screen/hitung_butroll.dart';
import 'package:kp/widget/ReusableCard.dart';
import 'package:kp/widget/picker.dart';

enum Liner { A125, H150, F200, six275 }

const Map<Liner, String> LinerName = {
  Liner.A125: "A",
  Liner.H150: "H",
  Liner.F200: "F",
  Liner.six275: "6",
};

enum Medium { K110, M125, S150, N200 }

const Map<Medium, String> MediumName = {
  Medium.M125: "M",
  Medium.S150: "S",
  Medium.N200: "N",
  Medium.K110: "K",
};

class Substance extends StatefulWidget {
  Substance({Key? key, required this.selected}) : super(key: key);
  final selected;
  @override
  _SubstanceState createState() => _SubstanceState();
}

class _SubstanceState extends State<Substance> {
  Liner? SelectedLiner;
  Medium? SelectedMedium;

  get selected => widget.selected;

  @override
  Widget build(BuildContext context) {
    if (selected == Kertas.Liner) {
      substansi = SelectedLiner;

      return (Center(
          child: GestureDetector(
        child: Column(children: <Widget>[
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  width: 50,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedLiner = Liner.six275;
                      });
                    },
                    child: ReusableTab(
                      colour: SelectedLiner == Liner.six275
                          ? kInactiveColor
                          : kThemeColor,
                      text: LinerName[Liner.six275].toString(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  width: 50,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedLiner = Liner.F200;
                      });
                    },
                    child: ReusableTab(
                      colour: SelectedLiner == Liner.F200
                          ? kInactiveColor
                          : kThemeColor,
                      text: LinerName[Liner.F200].toString(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  width: 50,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedLiner = Liner.H150;
                      });
                    },
                    child: ReusableTab(
                      colour: SelectedLiner == Liner.H150
                          ? kInactiveColor
                          : kThemeColor,
                      text: LinerName[Liner.H150].toString(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  width: 50,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedLiner = Liner.A125;
                      });
                    },
                    child: ReusableTab(
                      colour: SelectedLiner == Liner.A125
                          ? kInactiveColor
                          : kThemeColor,
                      text: LinerName[Liner.A125].toString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      )));
    }
    substansi = SelectedMedium;

    return (Container(
        child: GestureDetector(
      child: Column(children: <Widget>[
        Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(4),
                width: 50,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedMedium = Medium.K110;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedMedium == Medium.K110
                        ? kInactiveColor
                        : kThemeColor,
                    text: MediumName[Medium.K110].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                width: 50,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedMedium = Medium.M125;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedMedium == Medium.M125
                        ? kInactiveColor
                        : kThemeColor,
                    text: MediumName[Medium.M125].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                width: 50,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedMedium = Medium.S150;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedMedium == Medium.S150
                        ? kInactiveColor
                        : kThemeColor,
                    text: MediumName[Medium.S150].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                width: 50,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedMedium = Medium.N200;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedMedium == Medium.N200
                        ? kInactiveColor
                        : kThemeColor,
                    text: MediumName[Medium.N200].toString(),
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
