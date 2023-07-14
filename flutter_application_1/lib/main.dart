// import 'package:flutter/material.dart';

// void main () {
//   // ignore: prefer_const_constructors
//   runApp(Center(
//     // ignore: prefer_const_constructors
//     child: Text(
//       'Hello World',
//       textDirection: TextDirection.ltr,
//     ),
//   ));
// }

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  //Para este snippet usar "build"
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenido a Flutter'),
        ),
        body: Center(
          child: Text('Hola Mundo 2'),
        ),
      ),
    );
  }
}
