import 'package:flutter/material.dart';

class get_data extends StatefulWidget {
  final String? name;
  final String? home;
  final String? cell;
  final Color? color;
  final Color? bg;
  const get_data(
      {Key? key, this.name, this.home, this.cell, this.color, this.bg})
      : super(key: key);

  @override
  _get_dataState createState() => _get_dataState();
}

class _get_dataState extends State<get_data> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double h = height / 100;

    double width = MediaQuery.of(context).size.width;
    double w = width / 100;
    return Container(
      height: h * 13,
      margin: EdgeInsets.symmetric(horizontal: w * 3),
      child: Column(
        children: [
          ListTile(
            leading: Transform.translate(
              offset: Offset(-8, -10),
              child: CircleAvatar(
                backgroundColor: widget.bg,
                child: Icon(
                  Icons.person,
                  size: h * 3,
                  color: Colors.white,
                ),
              ),
            ),
            title: Row(
              children: [
                Text(
                  widget.name!,
                  style: TextStyle(
                      color: widget.color,
                      fontWeight: FontWeight.bold,
                      fontSize: h * 3),
                ),
              ],
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: h * 1, bottom: h * 0.5),
                  child: Text(
                    "Home : " + widget.home!,
                    style: TextStyle(color: Colors.white70, fontSize: h * 2),
                  ),
                ),
                Text(
                  "Cell : " + widget.cell!,
                  style: TextStyle(color: Colors.white60, fontSize: h * 2),
                ),
              ],
            ),
            trailing: Icon(
              Icons.phone,
              size: h * 3.2,
              color: Colors.white54,
            ),
            isThreeLine: true,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 4, vertical: h * 0.3),
            child: Divider(
              color: Colors.white54,
              height: h * 1,
            ),
          ),
        ],
      ),
    );
  }
}
