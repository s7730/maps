import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "url app",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
launchEmail() async {
  launch(
    'mailto:suryadatlavarma69693@gmail.com?subject=Testing my email&body=Thanks for using  my Email',
  );
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 90, 8, 114),
        title: Text(
          '  EMAIL LAUNCHER',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              padding: EdgeInsets.only(left: -100, right: -100),
              onPressed: launchEmail,
              color:Color.fromARGB(255, 90, 8, 114),
              child: Text(
                "TAP TO SEND EMAIL",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}