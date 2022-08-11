import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class igHome extends StatefulWidget {
  const igHome({Key? key}) : super(key: key);

  @override
  State<igHome> createState() => _igHomeState();
}

class _igHomeState extends State<igHome> {
  List _items = ['Indonesia Citizen', 'Foreigner'];
  String selectedItem = 'Indonesia Citizen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(20.0),
                ),
                const Text(
                  "Edit Account",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      color: Colors.blue.shade100),
                  child: Column(
                    children: [
                      Icon(
                        Icons.person_outline,
                        size: 80,
                        color: Colors.blue.shade400,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 95, left: 95),
                  child: Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        color: Colors.blue),
                    child: Positioned(
                      top: 100,
                      left: 100,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text("Citizenship"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Column(
                      children: [
                        Container(
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 50,
                                  width: 400,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: .0, style: BorderStyle.solid),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                    ),
                                  ),
                                  child: SizedBox(
                                    child: DropdownButton(
                                      items: [
                                        DropdownMenuItem(
                                            child: Text("Indonesia Citizen"),
                                            value: "USA"),
                                        DropdownMenuItem(
                                            child: Text("Foreigner"),
                                            value: "Foreign"),
                                      ],
                                      onChanged: (value) {
                                        setState(() {
                                          null;
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text("Full Name"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints.tightFor(width: 400),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "Muh.Royhan Bumi Dzulhijjah",
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [Text("Birthdate")],
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 400,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "Birthdate",
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.date_range)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [Text("ID Number")],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 400,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "ID Number",
                              border: OutlineInputBorder()),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [Text("Passport Number")],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 400,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "Passport Number",
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        2.0, // Move to right 10  horizontally
                        2.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(20),
                width: 400,
                child: Column(children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "royhanbumi227@gmail.com",
                      )
                    ],
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        2.0, // Move to right 10  horizontally
                        2.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(20),
                width: 400,
                child: Column(children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Phone Number",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Add Phone Number",
                          style: TextStyle(color: Colors.lightBlue.shade300),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 200.0,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (() {}),
                      child: Text(
                        "Save",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
