
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/insta_stories.dart';

class InstaList extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> InstaListState();
}

class InstaListState extends State<InstaList>{
  bool isPressed=false;

  @override
  Widget build(BuildContext context) {
    var deviceSize=MediaQuery.of(context).size;

    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index)=>index==0?
          SizedBox(
            child: InstaStories (),
            height: deviceSize.height *0.15,
          )
         :Column(
           mainAxisAlignment: MainAxisAlignment.start,
           mainAxisSize:MainAxisSize.min,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Padding(
               padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
               child: Row(
                 mainAxisAlignment:MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       Container(
                         height: 40.0,
                         width: 40.0,
                         decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(
                                 fit: BoxFit.fill,
                                 image: NetworkImage(
                                     "https://images.unsplash.com/photo-1532375810709-75b1da00537c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWF8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
                                 )
                             )
                         ),
                       ),
                       SizedBox(width: 10),
                       Text(
                         "imthpk",
                         style: TextStyle(fontWeight: FontWeight.bold),
                       )
                     ],
                   ),
                   IconButton(
                       icon: Icon(Icons.more_vert),
                       onPressed: null
                   )
                 ],
               ),
             ),
             Flexible(
               fit: FlexFit.loose,
               child: new Image.network(
                 "https://cdn.pixabay.com/photo/2021/05/08/09/09/sunset-6237959__340.jpg",
                 fit: BoxFit.cover,
               ),
             ),
             Padding(
                 padding: const EdgeInsets.all(16),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         IconButton(
                             icon: Icon(Icons.favorite),
                             onPressed: null
                         ),
                         new SizedBox(
                           width: 16.0,
                         ),
                         new Icon(
                           FontAwesomeIcons.comment,
                         ),
                         new SizedBox(
                           width: 16.0,
                         ),
                         new Icon(FontAwesomeIcons.paperPlane),
                       ],
                     ),
                     Icon(FontAwesomeIcons.bookmark)
                   ],
                 ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
               child: Text(
                 "Liked by pawankumar, pk and 528,331 others",
                 style: TextStyle(fontWeight: FontWeight.bold),
               ),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                     height: 40,
                     width: 40,
                     decoration: new BoxDecoration(
                       shape: BoxShape.circle,
                       image: new DecorationImage(
                           fit: BoxFit.fill,
                           image: new NetworkImage(
                               "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                     ),
                   ),
                   SizedBox(
                     width: 10,
                   ),
                   Expanded(
                     child: new TextField(
                       decoration: new InputDecoration(
                         border: InputBorder.none,
                         hintText: "Add a comment...",
                       ),
                     ),
                   )
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
               child:
               Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
             )
           ],
         )


    );
  }
}
