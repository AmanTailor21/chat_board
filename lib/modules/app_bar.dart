import 'package:chat_board/Class/chat_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatdetailspageAppBar extends StatelessWidget
    implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    final chatuser todo = ModalRoute.of(context).settings.arguments;
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.green,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right: 16),
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("${todo.image}"),
                maxRadius: 20,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "${todo.text}",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
