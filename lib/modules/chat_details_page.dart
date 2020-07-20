import 'package:flutter/material.dart';

import 'app_bar.dart';

class chatdetailspage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: chatdetailspageAppBar(),
     body: Stack(
       children: <Widget>[
         Align(
           alignment: Alignment.bottomLeft,
           child: Container(
             height: 80,
             width: double.infinity,
             color: Colors.white,
             child: Row(
               children: <Widget>[
               ],
             ),
           ),
         )
       ],
     ),
   );
  }
}