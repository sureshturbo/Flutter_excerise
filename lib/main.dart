import 'package:flutter/material.dart';
import 'package:new_project/pages/api_get.dart';
//import 'package:new_project/pages/practice.dart';
import 'pages/form.dart';
import 'package:new_project/pages/practice1.dart';
import 'package:new_project/pages/productlist.dart';
import 'package:new_project/pages/progressbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:new_project/pages/webview_check.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market App',
      theme: ThemeData(
          primaryColor: Color(0xff258F83),
          // textTheme: Color(0xff403C3C),
          accentColor: Color(0xff403C3C),
          hintColor: Color(0xffACABB5),
          buttonColor: Color(0xff258F83),
          textSelectionTheme: TextSelectionThemeData(
              cursorColor: Color(0xff258F83)) //cursor change
          ),
      //home: Add_pro(),
      //home: Addproduct(),
        //home: ForgotPasswordScreen()
      //home: Home()
        //Material(child: Center( child: MaterialButton( onPressed: _launchURL, child: Text('Show Flutter homepage'),


      //api_get_flutter()
      //MyApp(),
//MyHomePage(title: 'Flutter Demo Home Page'),
    );

  }
  // void _launchURL() async{
  //   const _url = 'https://flutter.dev';
  //   await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  // }
}


