/*import 'dart:async';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
   Timer? timer;
  int count = 0;
  bool active = true;
  int save=0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);

    timer = Timer.periodic(Duration(seconds:1), (tm) {
      if(active) {
        setState(() {
          count += 1;
          print(DateTime.now());
          setUserList2();



        });
      }
    });
  }

  @override
  void dispose() {

    super.dispose();
    timer!.cancel();
    WidgetsBinding.instance!.removeObserver(this);
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    setState(() {
      if (state == AppLifecycleState.resumed) {
        active =true;
        print('resumed');
      } else if (state == AppLifecycleState.inactive) {
        active = true;
        print('inactive');
      } else if (state == AppLifecycleState.detached){
        active =true;
        print('detached');


      } else if (state == AppLifecycleState.paused){
        active = true;
        print('paused');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('$count---$save');
  }

   Future<void> set(sav) async {
     final SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setInt('savedstep',sav);
   }
   void getNots() async {
     final SharedPreferences pref = await SharedPreferences.getInstance();
     save = pref.getInt('savedstep')!;


     setState(() {


     });
   }
   Future setUserList2() async {
     await Firebase.initializeApp();
     User? user =  FirebaseAuth.instance.currentUser;
     String dateString = DateTime.now().toString();
     var dateTime = DateTime.parse(dateString);
     var date = "${dateTime.second}-${dateTime.minute}-${dateTime.hour}-${dateTime.day}-${dateTime.month}-${dateTime.year}";
     await FirebaseFirestore.instance.collection("user").doc(user!.uid).collection('schrittzaehler Angaben').doc(date).set(
         {
           'schritte': null,
           'reichweite': null,
           'Kcal': null,

         }).then((value){
       print('setUserList2');
     });
   }
}




void main() {
  runApp(new MyApp());
}

final key = new GlobalKey<MyStatefulWidget1State>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new MyStatefulWidget1(key: key),
            new MyStatefulWidget2(),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget1 extends StatefulWidget {
  MyStatefulWidget1({ required Key key }) : super(key: key);
  State createState() => new MyStatefulWidget1State();
}

class MyStatefulWidget1State extends State<MyStatefulWidget1> {
  String _createdObject = "Hello world!";
  String get createdObject => _createdObject;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(_createdObject),
    );
  }
}

class MyStatefulWidget2 extends StatefulWidget {
  State createState() => new MyStatefulWidget2State();
}

class MyStatefulWidget2State extends State<MyStatefulWidget2> {
  String _text = 'PRESS ME';

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
        child: new Text(_text),
        onPressed: () {
          setState(() {
            _text = key.currentState!.createdObject;
          });
        },
      ),
    );
  }
}*/