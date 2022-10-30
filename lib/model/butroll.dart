// import 'package:firebase_database/firebase_database.dart';
// import 'package:intl/intl.dart';
// import 'package:kp/sementara/widget/kertas.dart';
// import 'package:kp/sementara/widget/lebarkertas.dart';

// var substansi;
// var lebar;
// var diameter;
// var uid;
// var grup;
// var username;

// void NewButroll() async {
//   final usernamenow = "me";
//   final grupnow = "a";
//   final uidnow = 1;
//   final substansinow = LinerName[substansi] == null
//       ? MediumName[substansi]
//       : LinerName[substansi];
//   final lebarnow = LebarName[lebar];
//   final diameternow = diameter;

//   // A post entry.
//   var now = DateTime.now();
//   var formatter = DateFormat('yyyy-MM-dd');
//   String formattedDate = formatter.format(now);
//   print(formattedDate); // 2016-01-25
//   final postData = {
//     'user': usernamenow,
//     'grup': grupnow,
//     'uid': uidnow,
//     'substansi': substansinow,
//     'lebar': lebarnow,
//     'diameter': diameternow,
//     'date': formattedDate,
//   };
//   print(postData);
//   // Get a key for a new Post.
//   final newPostKey =
//       FirebaseDatabase.instance.ref().child('Butroll').push().key;

//   // Write the new post's data simultaneously in the posts list and the
//   // user's post list.
//   final Map<String, Map> updates = {};
//   updates['/Butroll/$newPostKey'] = postData;
//   updates['/user-Butroll/$uid/$newPostKey'] = postData;

//   return FirebaseDatabase.instance.ref().update(updates);
// }
