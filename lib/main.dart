import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var ref = FirebaseDatabase.instance.reference();
  // void writedata() {
  //   ref.child("tags").set({

  //   });
  // }

  void read() {
    ref.once().then((DataSnapshot dataSnapshot) {
      print(dataSnapshot.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doorlock"),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: read,
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(50))),
            child: const Text("Button1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Button2",
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button3"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button4"),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // onPressed_Butt1() async {
  //   await ref.set({
  //     "name": "button1",
  //     "age": 5,
  //   });
  // }
}
