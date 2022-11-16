import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kp/constants.dart';
import 'package:kp/model/butroll.dart';
import 'package:kp/screen/hitung_butroll.dart';
import 'package:kp/widget/ReusableCard.dart';

enum Lebar {
  L130,
  L135,
  L140,
  L145,
  L150,
  L155,
  L160,
  L165,
  L170,
  L175,
  L180,
  L185,
  L190,
  L195,
  L200,
  L205,
  L210,
  L215,
  L220,
  L225,
  L230,
  L235,
  L240,
  L245,
  L250,
}

const Map<Lebar, String> LebarName = {
  Lebar.L130: "130",
  Lebar.L135: "135",
  Lebar.L140: "140",
  Lebar.L145: "145",
  Lebar.L150: "150",
  Lebar.L155: "155",
  Lebar.L160: "160",
  Lebar.L165: "165",
  Lebar.L170: "170",
  Lebar.L175: "175",
  Lebar.L180: "180",
  Lebar.L185: "185",
  Lebar.L190: "190",
  Lebar.L195: "195",
  Lebar.L200: "200",
  Lebar.L205: "205",
  Lebar.L210: "210",
  Lebar.L215: "215",
  Lebar.L220: "220",
  Lebar.L225: "225",
  Lebar.L230: "230",
  Lebar.L235: "235",
  Lebar.L240: "240",
  Lebar.L245: "245",
  Lebar.L250: "250",
};

class LebarKertas extends StatefulWidget {
  LebarKertas({Key? key, required this.selected}) : super(key: key);
  final selected;
  @override
  _LebarKertasState createState() => _LebarKertasState();
}

class _LebarKertasState extends State<LebarKertas> {
  Lebar? SelectedLebar;

  get selected => widget.selected;

  @override
  Widget build(BuildContext context) {
    lebar = SelectedLebar;

    return (Center(
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
                      SelectedLebar = Lebar.L130;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L130
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L130].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L135;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L135
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L135].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L140;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L140
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L140].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L145;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L145
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L145].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L150;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L150
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L150].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L155;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L155
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L155].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L160;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L160
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L160].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L165;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L165
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L165].toString(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L170;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L170
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L170].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L175;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L175
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L175].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L180;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L180
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L180].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L185;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L185
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L185].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L190;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L190
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L190].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L195;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L195
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L195].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L200;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L200
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L200].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L205;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L205
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L205].toString(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L210;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L210
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L210].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L215;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L215
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L215].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L220;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L220
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L220].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L225;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L225
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L225].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L230;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L230
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L230].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L235;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L235
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L235].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L240;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L240
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L240].toString(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      SelectedLebar = Lebar.L245;
                    });
                  },
                  child: ReusableTab(
                    colour: SelectedLebar == Lebar.L245
                        ? kInactiveColor
                        : kThemeColor,
                    text: LebarName[Lebar.L245].toString(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.all(4),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  SelectedLebar = Lebar.L250;
                });
              },
              child: ReusableTab(
                colour:
                    SelectedLebar == Lebar.L250 ? kInactiveColor : kThemeColor,
                text: LebarName[Lebar.L250].toString(),
              ),
            ),
          ),
        ),
      ]),
    )));
  }
}
