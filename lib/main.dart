import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var ref = FirebaseDatabase.instance.reference();
  CollectionReference u = FirebaseFirestore.instance.collection('tags');

  void update_to_deny(int switch_no) async {
    await FirebaseFirestore.instance.collection("tags").doc("first").update({
      "c_lvl_" + switch_no.toString(): "deny",
    });
  }

  void update_to_allow(int switch_no) async {
    await FirebaseFirestore.instance.collection("tags").doc("first").update({
      "c_lvl_" + switch_no.toString(): "allow",
    });
  }
  // void read() async {
  //   await FirebaseFirestore.instance.collection("tags").doc("first").read({});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "                  RFID Based Doorlock",
          style: GoogleFonts.rubik(fontWeight: FontWeight.w400),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  "Card Level 1",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ToggleSwitch(
                    minWidth: MediaQuery.of(context).size.width / 3.92,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.red[800]!],
                      [Colors.green[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['Deny', 'Allow'],
                    radiusStyle: true,
                    onToggle: (index) {
                      if (index == 1) {
                        update_to_allow(1);
                      } else {
                        update_to_deny(1);
                      }
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Card Level 2",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ToggleSwitch(
                    minWidth: MediaQuery.of(context).size.width / 3.92,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.red[800]!],
                      [Colors.green[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['Deny', 'Allow'],
                    radiusStyle: true,
                    onToggle: (index) {
                      if (index == 1) {
                        update_to_allow(2);
                      } else {
                        update_to_deny(2);
                      }
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Card Level 3",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ToggleSwitch(
                    minWidth: MediaQuery.of(context).size.width / 3.92,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.red[800]!],
                      [Colors.green[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['Deny', 'Allow'],
                    radiusStyle: true,
                    onToggle: (index) {
                      if (index == 1) {
                        update_to_allow(3);
                      } else {
                        update_to_deny(3);
                      }
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Card Level 4",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ToggleSwitch(
                    minWidth: MediaQuery.of(context).size.width / 3.92,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.red[800]!],
                      [Colors.green[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['Deny', 'Allow'],
                    radiusStyle: true,
                    onToggle: (index) {
                      if (index == 1) {
                        update_to_allow(4);
                      } else {
                        update_to_deny(4);
                      }
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Card Level 5",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ToggleSwitch(
                    minWidth: MediaQuery.of(context).size.width / 3.92,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.red[800]!],
                      [Colors.green[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['Deny', 'Allow'],
                    radiusStyle: true,
                    onToggle: (index) {
                      if (index == 1) {
                        update_to_allow(5);
                      } else {
                        update_to_deny(5);
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
