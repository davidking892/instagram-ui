
import 'package:flutter/material.dart';
import 'package:instagram_ui/insta_body.dart';

class InstaHome extends StatelessWidget{

  final topBar=AppBar(
     backgroundColor: Color(0xfff8faf8),
     centerTitle: true,
     elevation: 5,
     leading: Icon(Icons.camera_alt),
     title: SizedBox(
        child: Text('Instagram',style:TextStyle(color:Colors.black)),
     ),
    actions: [
      Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Icon(Icons.send)
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: topBar,
          body: InstaBody(),
          bottomNavigationBar: BottomAppBar(
            color:Colors.white,
             child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   IconButton(icon: Icon(Icons.home)),
                   IconButton(icon: Icon(Icons.search)),
                   IconButton(icon: Icon(Icons.add_box)),
                   IconButton(icon: Icon(Icons.favorite)),
                   IconButton(icon:Icon(Icons.account_box))
                ],
             ),
          ),
      );
  }

}