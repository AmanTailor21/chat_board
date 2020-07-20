import 'package:chat_board/modules/chat_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatuserlist extends StatefulWidget {
  String text;
  String secontext;
  String image;

  chatuserlist(
      {@required this.text, @required this.secontext, @required this.image});

  @override
  _chatuserlistState createState() => _chatuserlistState();
}

class _chatuserlistState extends State<chatuserlist> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return chatdetailspage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.image),
                    maxRadius: 30,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.text,
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.secontext,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
