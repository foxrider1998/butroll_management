import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kp/model/post.dart';
import 'package:kp/model/user.dart';
import 'package:kp/screen/hitung_butroll.dart';
import 'package:kp/screen/kalkulasi.dart';
import 'package:kp/screen/update_user.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

var uid = FirebaseAuth.instance.currentUser?.uid;
var username;
var grup;
var statusa;
var statusb;
var statusc;
var counta;
var countb;
var countc;
var currentUser = FirebaseAuth.instance.currentUser;
final ref = FirebaseDatabase.instance.ref();

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  static const String route = "dashboard";

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 1), () async {
      final event = await ref.once(DatabaseEventType.value);
      username = event.snapshot.child('user/$uid/username').value;
      grup = event.snapshot.child('user/$uid/grup').value;

      // int jmlBtroll;
      // FirebaseDatabase.instance
      //     .ref()
      //     .child('Butroll/GrupA')
      //     .once()
      //     .then((onValue) {
      //   Map data = onValue.snapshot.value as Map;
      //   jmlBtroll = data.length;
      //   print(jmlBtroll);
      // });

      print("grup A");
      var refa = 'Butroll/GrupA';
      Map countinga = event.snapshot.child(refa).value as Map;

      print(counta = countinga.length);
      for (var i = 0; i < 100; i++) {}

      print("grup b");
      var refb = 'Butroll/GrupB';
      Map countingb = event.snapshot.child(refb).value as Map;
      print(countb = countingb.length);
      for (var i = 0; i < 100; i++) {}

      print("grup c");
      var refc = 'Butroll/GrupC';
      Map countingc = event.snapshot.child(refc).value as Map;
      print(countc = countingc.length);
      for (var i = 0; i < 100; i++) {}
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (uid == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else
      return Container(
          child: Column(children: [
        Container(child: UserInfo()),
        Container(child: StackLineGraph()),
        Container(child: CariButroll()),
        SizedBox(
          height: 8,
        ),
        HitungRoll(),
        TambahButroll()
      ]));
  }

  UserInfo() {
    return Container(
      height: 65,
      margin: EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: ElevatedButton(
                  onPressed: (() {
                    Navigator.pushNamed(context, FormUpdateUser.route);
                  }),
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Image.network(
                          (currentUser?.photoURL != null
                              ? currentUser!.photoURL.toString()
                              : "https://www.pngfind.com/pngs/m/470-4703547_icon-user-icon-hd-png-download.png"),
                          width: 40,
                          height: 40,
                        ),
                        Text("${username}"),
                      ],
                    ),
                  ))),
          Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Text(
                      "Grup : $grup",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text("Butroll tersedia : 58",
                        style: TextStyle(fontSize: 18)),
                    Text("data", style: TextStyle(fontSize: 18))
                  ],
                ),
              ))
        ],
      ),
    );
  }

  HitungRoll() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
                onPressed: (() {
                  Navigator.pushNamed(context, Kalkulasi.route);
                }),
                child: Text("Hitung Roll")),
          ),
        ],
      ),
    );
  }

  CariButroll() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child:
                ElevatedButton(onPressed: (() {}), child: Text("Cari Butroll")),
          ),
        ],
      ),
    );
  }

  TambahButroll() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
                onPressed: (() {
                  Navigator.pushNamed(context, HitungPage.route);
                }),
                child: Text("Tambah Butroll")),
          ),
        ],
      ),
    );
  }

  SfCartesianChart StackLineGraph() {
    final List<ChartData> chartData = [
      //format data   a   b   c   month
      ChartData(10, 15, 20, "1"),
      // ChartData(10, 15, 20, "2"),
      // ChartData(10, 15, 20, "3"),
      // ChartData(10, 15, 20, "4"),
      // ChartData(10, 15, 20, "5"),
      // ChartData(10, 15, 20, "6"),
      // ChartData(10, 15, 20, "7"),
      // ChartData(10, 15, 20, "8"),
      // ChartData(10, 15, 20, "9"),
      // ChartData(10, 15, 20, "10"),
      // ChartData(10, 15, 20, "11"),
      // ChartData(10, 15, 20, "12"),
    ];
    return SfCartesianChart(primaryXAxis: CategoryAxis(), series: <ChartSeries>[
      StackedLineSeries<ChartData, String>(
          groupName: 'Group A',
          dataLabelSettings: DataLabelSettings(
              isVisible: true,
              showCumulativeValues: true,
              useSeriesColor: true),
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y1),
      StackedLineSeries<ChartData, String>(
          groupName: 'Group B',
          dataLabelSettings: DataLabelSettings(
              isVisible: true,
              showCumulativeValues: true,
              useSeriesColor: true),
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y2),
      StackedLineSeries<ChartData, String>(
          groupName: 'Group C',
          dataLabelSettings: DataLabelSettings(
              isVisible: true,
              showCumulativeValues: true,
              useSeriesColor: true),
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y3),
    ]);
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}

class ChartData {
  ChartData(this.y1, this.y2, this.y3, this.x);
  final int y1;
  final int y2;
  final int y3;
  final String x;
}
