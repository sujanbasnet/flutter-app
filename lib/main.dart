/**
 * @author [Sujan Basnet]
 * @email [basnetsujan95@gmail.com]
 * @create date 2019-08-06 14:56:39
 * @modify date 2019-08-06 14:56:39
 * @desc [description]
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/words/randomwords.dart';

main() {
  runApp(ThisApp());
}

class ThisApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.green
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          body1: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.black54,
            fontSize: 15.0,
          ),
          title: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Montserrat',
            color: Colors.black87,
          )
        )
      ),
      home: Builder(
        builder: (context) => RandomWords(),
      ),
    );

  }

}