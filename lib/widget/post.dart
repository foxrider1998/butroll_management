import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PostWidget extends StatelessWidget {
  final String? message;
  final String? date;

  PostWidget(this.message, this.date);
  String? nama = "aris";
  String? mean = "artinya adalah ....";

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 1, top: 5, right: 1, bottom: 2),
        child: Column(
          children: [
            Container(
                height: 80,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[350]!,
                          blurRadius: 2.0,
                          offset: Offset(0, 1.0))
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
                child: MaterialButton(
                    disabledTextColor: Colors.black87,
                    padding: EdgeInsets.only(left: 18),
                    onPressed: null,
                    child: Wrap(
                      children: <Widget>[
                        Container(
                            child: Row(
                          children: [
                            Flexible(
                                child: Column(
                              children: [
                                Text(message!),
                                SizedBox(
                                  height: 33,
                                  width: 16,
                                ),
                                Text(nama!),
                              ],
                            )),
                            Container(
                                padding: EdgeInsets.only(bottom: 2, right: 2),
                                child: Text(mean!)),
                          ],
                        )),
                      ],
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    date!,
                    style: TextStyle(color: Colors.grey),
                  )),
            ),
          ],
        ));
  }
}
