import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kp/model/post.dart';
import 'package:kp/screen/dashboard.dart';

class FormUpdateUser extends StatelessWidget {
  FormUpdateUser({
    super.key,
  });
  final namecontroller = TextEditingController();
  final poscontroller = TextEditingController();
  final groupcontroller = TextEditingController();
  static const String route = "FormUpdateUser";

  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser;
    // if (user != null) {
    //   // Name, email address, and profile photo URL
    //   final name = user.displayName;
    //   final email = user.email;
    //   final photoUrl = user.photoURL;

    //   // Check if user's email is verified
    //   final emailVerified = user.emailVerified;

    //   // The user's ID, unique to the Firebase project. Do NOT use this value to
    //   // authenticate with your backend server, if you have one. Use
    //   // User.getIdToken() instead.
    //   final uid = user.uid;
    // }
    // print("ini user");
    // print(user);

    return Expanded(
        child: Column(children: [
      SizedBox(
        height: 5,
      ),
      Container(
          margin: EdgeInsets.all(15),
          child: Flexible(
            child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  hintText: "submit your name",
                  labelText: "fullname",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                )),
          )),
      SizedBox(
        height: 5,
      ),
      Container(
          margin: EdgeInsets.all(15),
          child: Flexible(
            child: TextField(
                controller: poscontroller,
                decoration: InputDecoration(
                  hintText: "submit your position",
                  labelText: "position",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                )),
          )),
      SizedBox(
        height: 5,
      ),
      Container(
          margin: EdgeInsets.all(15),
          child: Flexible(
            child: TextField(
                controller: groupcontroller,
                decoration: InputDecoration(
                  hintText: "submit your group",
                  labelText: "Grup",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                )),
          )),
      ElevatedButton(
        child: const Text('write new post'),
        onPressed: () {
          writeNewPost(
              poscontroller.text, namecontroller.text, groupcontroller.text);
          Navigator.pushReplacementNamed(context, Dashboard.route);
        },
      ),
    ]));
  }
}
