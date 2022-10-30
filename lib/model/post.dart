import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';
import 'package:kp/model/butroll.dart';

void writeNewPost(String position, String username, String grup) async {
  // A post entry.
  var uid = FirebaseAuth.instance.currentUser?.uid;

  var now = DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(now);
  print(formattedDate); // 2016-01-25
  final postData = {
    'username': username,
    'uid': uid,
    'position': position,
    'grup': grup,
    'date': formattedDate,
  };

  // Get a key for a new Post.
  final newPostKey = FirebaseDatabase.instance.ref().child('user').push().key;

  // Write the new post's data simultaneously in the posts list and the
  // user's post list.
  final Map<String, Map> updates = {};
  updates['/user/$username'] = postData;

  return FirebaseDatabase.instance.ref().update(updates);
}
