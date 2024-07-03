import 'package:flutter/material.dart';
import 'package:swifty_delivery/pages/button.dart';
import 'package:swifty_delivery/pages/home.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:swifty_delivery/pages/login.dart';
import 'package:swifty_delivery/pages/onboard.dart';
import 'package:swifty_delivery/pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        title: 'Swifty Delivery',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          // useMaterial3: false,
          primarySwatch: Colors.blue,
        ),
        // A widget which will be started on application startup
        home: Onboard());
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
    );
  }
}
