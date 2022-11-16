import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kp/model/post.dart';
import 'package:kp/screen/dashboard.dart';

class FormUpdateUser extends StatefulWidget {
  FormUpdateUser({
    super.key,
  });
  final namecontroller = TextEditingController();
  final poscontroller = TextEditingController();
  final groupcontroller = TextEditingController();
  static const String route = "FormUpdateUser";
  @override
  State<FormUpdateUser> createState() => _FormUpdateUserState();
}

class _FormUpdateUserState extends State<FormUpdateUser> {
  @override
  Widget build(BuildContext context) {
    var _user = FirebaseAuth.instance.currentUser;
    print("user");
    print(_user);
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

    return Scaffold(
      appBar: AppBar(
        title: Text("update profile"),
      ),
      body: Center(
          child: Column(children: [
        Container(
            margin: EdgeInsets.all(15),
            child: Flexible(
              child: TextField(
                  controller: widget.namecontroller,
                  decoration: InputDecoration(
                    hintText: "submit your name",
                    labelText: _user!.displayName,
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  )),
            )),
        Container(
            margin: EdgeInsets.all(15),
            child: Flexible(
              child: TextField(
                  controller: widget.poscontroller,
                  decoration: InputDecoration(
                    hintText: "submit your position",
                    labelText: "position",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  )),
            )),
        Container(
            margin: EdgeInsets.all(15),
            child: Flexible(
              child: TextField(
                  controller: widget.groupcontroller,
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
            UpdateUser(widget.poscontroller.text, widget.namecontroller.text,
                widget.groupcontroller.text);
            Navigator.pushReplacementNamed(context, Dashboard.route);
          },
        ),
      ])),
    );
  }
}
