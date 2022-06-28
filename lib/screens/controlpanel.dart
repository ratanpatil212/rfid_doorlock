import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'package:doorlock/main.dart';
import 'package:doorlock/firebase_options.dart';

class controlPanel extends StatefulWidget {
  const controlPanel({Key? key}) : super(key: key);

  @override
  State<controlPanel> createState() => _controlPanelState();
}

class _controlPanelState extends State<controlPanel> {
  @override
  Widget build(BuildContext context) {
    List<int> integers = [1, 2, 3, 4, 5];
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
            for (var i in integers)
              ToggleButtonWidget(
                inputInteger: i,
              )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ToggleButtonWidget extends StatelessWidget {
  final int inputInteger;

  ToggleButtonWidget({required this.inputInteger});

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

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Card Level $inputInteger",
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
                update_to_allow(inputInteger);
              } else {
                update_to_deny(inputInteger);
              }
            },
          ),
        ),
      ],
    );
  }
}
