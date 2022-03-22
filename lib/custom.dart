import 'package:flutter/material.dart';

class Custom extends StatefulWidget {
  Custom({Key? key, required this.title, required this.icon}) : super(key: key);

  IconData icon;
  String title;
  @override
  State<StatefulWidget> createState() {
    return CustomState();
  }
}

class CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 00),
          child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[100],
              child: Icon(
                widget.icon,
                color: Colors.blue[900],
                size: 35,
              )),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          widget.title,
          style: TextStyle(fontSize: 15, color: Colors.blue[900]),
        )
      ],
    );
  }
}
