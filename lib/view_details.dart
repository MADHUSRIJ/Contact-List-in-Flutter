import 'package:flutter/material.dart';

import 'main.dart';

class view extends StatefulWidget {
  final String? name;
  final String? home;
  final String? cell;
  final String? address;
  final String? city;
  final String? state;
  final String? zip;
  const view(
      {Key? key,
      this.name,
      this.home,
      this.cell,
      this.address,
      this.city,
      this.state,
      this.zip})
      : super(key: key);

  @override
  _viewState createState() => _viewState();
}

class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double h = height / 100;

    double width = MediaQuery.of(context).size.width;
    double w = width / 100;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            child: Icon(
              Icons.arrow_back,
              size: h * 4,
              color: Colors.white,
            )),
        title: Text(
          " Contact Details",
          style: TextStyle(color: Colors.white, fontSize: h * 3),
        ),
        backgroundColor: Colors.grey.shade900,
        toolbarHeight: h * 7,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.only(top: h * 4),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: h * 6,
              backgroundColor: Colors.redAccent,
              child: Icon(
                Icons.person,
                size: h * 5,
                color: Colors.white,
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: w * 2),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.symmetric(horizontal: w * 2),
                    child: Text(
                      widget.name!,
                      style: TextStyle(
                          fontSize: h * 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.white54,
                    height: h * 1,
                  ),
                )
              ],
            ),
          )),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  newMethod(h, "Home", widget.home!, Icons.phone),
                  newMethod(h, "Cell", widget.cell!, Icons.phone_android),
                  Expanded(
                    child: Divider(
                      color: Colors.white54,
                      height: h * 1,
                    ),
                  ),
                ],
              )),
          Expanded(
              child: Column(
            children: [
              newMethod(h, "Address", widget.address!, Icons.home),
              Expanded(
                child: Divider(
                  color: Colors.white54,
                  height: h * 1,
                ),
              ),
            ],
          )),
          Expanded(
              child: Column(
            children: [
              newMethod(h, "City", widget.city!, Icons.apartment),
              Expanded(
                child: Divider(
                  color: Colors.white54,
                  height: h * 1,
                ),
              ),
            ],
          )),
          Expanded(
              child: Column(
            children: [
              newMethod(h, "State", widget.state!, Icons.yard),
              Expanded(
                child: Divider(
                  color: Colors.white54,
                  height: h * 1,
                ),
              ),
            ],
          )),
          Expanded(
              child: Column(
            children: [
              newMethod(h, "Zipcode", widget.zip!, Icons.pin_drop),
            ],
          )),
        ],
      ),
    ));
  }

  Expanded newMethod(double h, String name, String a, IconData icon) {
    return Expanded(
      flex: 2,
      child: Container(
        child: ListTile(
          leading: Icon(icon, size: h * 2.5, color: Colors.blue),
          title: Text(
            a,
            style: TextStyle(color: Colors.white, fontSize: h * 2),
          ),
          subtitle: Text(
            name,
            style: TextStyle(color: Colors.white38, fontSize: h * 1.8),
          ),
        ),
      ),
    );
  }
}
