import 'package:flutter/material.dart';
import 'package:instagram_ui/InstaHome.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Instagram',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         primarySwatch: Colors.amber
       ),
       home: InstaHome(),
     );
  }
}