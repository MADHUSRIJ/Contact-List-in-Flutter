import 'package:contact_list/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'add.dart';

class add_contacts extends StatefulWidget {
  const add_contacts({Key? key}) : super(key: key);

  @override
  _add_contactsState createState() => _add_contactsState();
}

class _add_contactsState extends State<add_contacts> {
  final _formKey = GlobalKey<FormState>();

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
        title: Text(
          " Add new contacts",
          style: TextStyle(color: Colors.white, fontSize: h * 3),
        ),
        backgroundColor: Colors.grey.shade900,
        toolbarHeight: h * 7,
      ),
      body: Container(
          height: h * 40,
          margin: EdgeInsets.symmetric(vertical: h * 4),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: h * 4,
                    padding: EdgeInsets.symmetric(horizontal: w * 6),
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        onChanged: (val) {
                          context.read<add_details>().set_name(val);
                        },
                        validator: (value) {
                          if (value!.isEmpty && value == "") {
                            return "Contact Name should not be left empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Contact Name",
                            errorStyle: TextStyle(color: Colors.redAccent),
                            hintStyle: TextStyle(
                                fontSize: h * 2.3,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                            errorMaxLines: 1,
                            prefixIcon: Icon(
                              Icons.person,
                              size: h * 3,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            border: InputBorder.none),
                        style: TextStyle(fontSize: h * 2, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: h * 4,
                    padding: EdgeInsets.symmetric(horizontal: w * 6),
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        onChanged: (val) {
                          context.read<add_details>().set_home(val);
                        },
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty && value == "") {
                            return "Home Contact Number should not be left empty";
                          }
                          return null;
                        },
                        maxLength: 10,
                        decoration: InputDecoration(
                            hintText: "Contact Number - Home",
                            errorStyle: TextStyle(color: Colors.redAccent),
                            hintStyle: TextStyle(
                                fontSize: h * 2.3,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                            errorMaxLines: 1,
                            prefixIcon: Icon(
                              Icons.phone,
                              size: h * 3,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            border: InputBorder.none),
                        style: TextStyle(fontSize: h * 2, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: h * 4,
                    padding: EdgeInsets.symmetric(horizontal: w * 6),
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        onChanged: (val) {
                          context.read<add_details>().set_cell(val);
                        },
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty && value == "") {
                            return "Cell Contact Number should not be left empty";
                          }
                          return null;
                        },
                        maxLength: 10,
                        decoration: InputDecoration(
                            hintText: "Contact Number - Cell",
                            errorStyle: TextStyle(color: Colors.redAccent),
                            hintStyle: TextStyle(
                                fontSize: h * 2.3,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                            errorMaxLines: 1,
                            prefixIcon: Icon(
                              Icons.phone_android,
                              size: h * 3,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            border: InputBorder.none),
                        style: TextStyle(fontSize: h * 2, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    if (!_formKey.currentState!.validate()) {
                    } else {
                      Provider.of<add_details>(context, listen: false).add();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                      print("Navigate");
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: w * 24,
                    margin: EdgeInsets.symmetric(vertical: h * 2),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5, color: Colors.lightBlue.shade700),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.lightBlue.shade900),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: h * 2.3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )),
              ],
            ),
          )),
    ));
  }
}
