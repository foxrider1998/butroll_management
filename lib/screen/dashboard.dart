import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kp/screen/update_user.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  static const String route = "login_screen";

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(child: UserInfo()),
      Container(child: StackLineGraph()),
      Container(child: CariButroll()),
      SizedBox(
        height: 8,
      ),
      HitungRoll()
    ]));
  }

  UserInfo() {
    return Container(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: ElevatedButton(
                  onPressed: (() {
                    Navigator.pushReplacementNamed(
                        context, FormUpdateUser.route);
                  }),
                  child: Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.person_pin,
                        ),
                        Text("Nama"),
                        Text("NIK"),
                        Text("figure")
                      ],
                    ),
                  ))),
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text("Grup : A"),
                    Text("Butroll tersedia : 58"),
                    Text("data")
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
            child:
                ElevatedButton(onPressed: (() {}), child: Text("Hitung Roll")),
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

  SfCartesianChart StackLineGraph() {
    final List<ChartData> chartData = [
      //format data   a   b   c   month
      ChartData(10, 15, 20, "1"),
      ChartData(10, 15, 20, "2"),
      ChartData(10, 15, 20, "3"),
      ChartData(10, 15, 20, "4"),
      ChartData(10, 15, 20, "5"),
      ChartData(10, 15, 20, "6"),
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

class ChartData {
  ChartData(this.y1, this.y2, this.y3, this.x);
  final int y1;
  final int y2;
  final int y3;
  final String x;
}
