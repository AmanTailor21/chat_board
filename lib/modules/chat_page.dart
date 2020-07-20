import 'dart:math';

import 'package:chat_board/Class/chat_list.dart';
import 'package:chat_board/Class/chat_user.dart';
import 'package:chat_board/Class/chat_user.dart';
import 'package:chat_board/Class/chat_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Chat extends StatefulWidget{
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<chatuserlist> chatuser=[
    chatuserlist(text:"Aman Tailor",secontext: "Hello Friends",image: "image/aman.PNG",),
    chatuserlist(text:"jayneel Patel",secontext: "Hello Friends;",image: "image/jayneel.PNG",),
    chatuserlist(text:"harsh kanani",secontext: "Hello Friends",image: "image/harsh.PNG",),
    chatuserlist(text:"jay lad",secontext: "Hello Friends",image: "image/jay.PNG",),
    chatuserlist(text:"janvi patel",secontext: "Hello Friends",image: "image/janvi.PNG",),
    chatuserlist(text:"hetvi parake",secontext: "Hello Friends",image: "image/hetvi.PNG",),
    chatuserlist(text:"Aman Tailor",secontext: "Hello Friends",image: "image/aman.PNG",),
    chatuserlist(text:"jayneel Patel",secontext: "Hello Friends;",image: "image/jayneel.PNG",),
    chatuserlist(text:"harsh kanani",secontext: "Hello Friends",image: "image/harsh.PNG",),
    chatuserlist(text:"jay lad",secontext: "Hello Friends",image: "image/jay.PNG",),
    chatuserlist(text:"janvi patel",secontext: "Hello Friends",image: "image/janvi.PNG",),
    chatuserlist(text:"hetvi parake",secontext: "Hello Friends",image: "image/hetvi.PNG",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(chtx(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.grey.shade100
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount : chatuser.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return chatuserlist(
                  text: chatuser[index].text,
                  secontext: chatuser[index].secontext,
                  image: chatuser[index].image,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  String chtx(){
    return "Chats";
  }
}