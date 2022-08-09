import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class igHome extends StatefulWidget {
  const igHome({Key? key}) : super(key: key);

  @override
  State<igHome> createState() => _igHomeState();
}

class _igHomeState extends State<igHome> {
  List<String> items = ['Indonesia Citizen', 'Foreigner'];
  String? selectedItem = 'Indonesia Citizen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Row(
                    children: [
                      DropdownButton(
                        items: [
                          DropdownMenuItem(
                            child: Text("Indonesian Citizen"),
                          ),
                        ],
                        onChanged: null,
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
            )
          ],
        ),
      ),
    );
  }
}
