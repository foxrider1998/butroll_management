import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kp/screen/dashboard.dart';
import 'package:kp/screen/loginpage.dart';
import 'package:kp/screen/splash_screen.dart';
import 'package:kp/screen/update_user.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return new MaterialApp(
            title: 'Error',
            theme: new ThemeData(
              primarySwatch: Colors.blue,
            ),
          );
          // home: ErrorPage());
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return new MaterialApp(
              title: 'Flutter BMS',
              theme: new ThemeData(
                primarySwatch: Colors.blue,
              ),
              initialRoute: "/",
              routes: {
                "/": (context) => const SplashScreen(),
                LoginPage.route: (context) => LoginPage(),
                Dashboard.route: (context) => Dashboard(),
                // RootPage.route: (context) => RootPage(auth: new Auth()),
                // MyHomePage.route: (context) => MyHomePage(
                //       title: 'MyHomePage',
                //     ),
                FormUpdateUser.route: (context) => FormUpdateUser(),

                //
                // LoginPage.route: (context) =>  LoginPage(auth: new Auth(),),
                // ProfilePage.route: (context) =>  ProfilePage(),
              });
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
