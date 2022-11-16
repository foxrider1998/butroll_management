import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';
import 'package:kp/model/post.dart';
import 'package:kp/screen/dashboard.dart';
import 'package:kp/screen/hitung_butroll.dart';
import 'package:kp/widget/kertas.dart';
import 'package:kp/widget/lebarkertas.dart';

var substansi;
var lebar;
var lokasi;
var diameter;
var uid;
var locate;

void NewButroll(username, diameter, lokasi) async {
  final event = await ref.once(DatabaseEventType.value);
  final grupnow = "B";
  var uidnow;

  final substansinow = LinerName[substansi] == null
      ? MediumName[substansi]
      : LinerName[substansi];
  final lebarnow = LebarName[lebar];

  final locatenow = lokasi.toString().split(".").last;
  final diameternow = diameter;
  var length = 100;
  // A data entry.
  var now = DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(now);
  print(formattedDate); // 2016-01-25

  if (idRollController.text == "") {
    if (grupnow.toUpperCase() == "A") {
      counta++;
      uidnow = "A" + counta.toString();
    } else {
      if (grupnow.toUpperCase() == "B") {
        countb++;
        uidnow = "B" + countb.toString();
        print(uidnow);
        print(uid);
      } else {
        if (grupnow.toUpperCase() == "C") {
          countc++;
          uidnow = "C" + countc.length.toString();
        }
      }
    }
  } else {
    uidnow = idRollController.text;
  }

  final postData = {
    'user': username,
    'grup': grupnow.toUpperCase(),
    'rollid': uidnow,
    'panjang': length,
    'substansi': substansinow,
    'lebar': lebarnow,
    'diameter': diameternow,
    'date': formattedDate,
    'lokasi': locatenow
  };
  print(postData);
  // Get a key for a new Post.
  final newPostKey = uidnow;

  // Write the new post's data simultaneously in the posts list and the
  // user's post list.
  final Map<String, Map> updates = {};
  // updates['/Butroll/$newPostKey'] = postData;
  updates['/user-Butroll/$uid/$newPostKey'] = postData;

  if (grupnow.toUpperCase() == "A") {
    updates['Butroll/GrupA/$newPostKey'] = postData;
  } else {
    if (grupnow.toUpperCase() == "B") {
      updates['Butroll/GrupB/$newPostKey'] = postData;
    } else {
      if (grupnow.toUpperCase() == "C") {
        updates['Butroll/Grupc/$newPostKey'] = postData;
      }
    }
  }
  return FirebaseDatabase.instance.ref().update(updates);
}
