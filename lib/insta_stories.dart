import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InstaStories extends StatelessWidget{

  final topText=Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
       Text(
         "Stories",
         style: TextStyle(fontWeight: FontWeight.bold),
       ),
      Row(
        children: [
          new Icon(Icons.play_arrow),
          new Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );

  final stories=Expanded(
       child: Padding(
         padding: const EdgeInsets.only(top: 8.0),
          child: ListView.builder(
               itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder:(context,index)=>Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://cdn.pixabay.com/photo/2021/04/25/18/37/horse-6207256__340.jpg")),
                    ),
                  ),
                  index == 0
                      ? Positioned(
                      right: 10.0,
                      child: new CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 10.0,
                        child: new Icon(
                          Icons.add,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ))
                      : new Container()
                ],
              )
          ),
       ),
  );

  @override
  Widget build(BuildContext context) {
     return Container(
       margin: const EdgeInsets.all(16),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           topText,
           stories
         ],
       ),
     );
  }

}