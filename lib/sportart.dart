import 'dart:async';

import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_name/flutter_app_name.dart';
import 'package:intl/intl.dart';
import 'package:pedometer/pedometer.dart';
import 'package:provider/src/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'DatabaseManager.dart';
import 'DatabaseManager.dart';
import 'Essenclasses.dart';
import 'auth.dart';
import 'package:cron/cron.dart';

import 'new.dart';



String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}



class Sportart extends StatefulWidget {



  const Sportart({Key? key}) : super(key: key);

  @override
  _SportartState createState() => _SportartState();

}


class _SportartState extends State<Sportart> {


  String time ='?';
  Timer? timer;

  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  String _status = '?';
  String ziel= '0';
  String aktivitaet = '0';
  String db_bmiwert ='0.0';
  String db_geschlecht='';
  String db_ziel='';
  String db_Aktivitaet='';
  String db_groesse='';
  String db_gewicht='';
  String db_alter ='';
  String db_email='';
  String userID='';
  String altUserId='';


  int neusteps= 0;
  int _steps = 0;
  int savedsteps=0;
  String reichweite = '0';
  String kalorie = '0';



  @override
  void initState(){
    super.initState();
    fetchUserInfo();
    getData();
    getNots();
    initPlatformState();


  }

  updateschrittzaehler() async {
    await Firebase.initializeApp();
    DatabaseManager().updateUserList2(
        neusteps,
        reichweite,
        kalorie,
        userID
    );
    print('updateschrittzaehler');
  }

  Future setUserList2() async {
    await Firebase.initializeApp();
    User? user =  FirebaseAuth.instance.currentUser;
    String dateString = DateTime.now().toString();
    var dateTime = DateTime.parse(dateString);
    var date = "${dateTime.minute}-${dateTime.hour}-${dateTime.day}-${dateTime.month}-${dateTime.year}";
    await FirebaseFirestore.instance.collection("user").doc(user!.uid).collection('schrittzaehler Angaben').doc(date).set(
        {
          'schritte': null,
          'reichweite': null,
          'Kcal': null,

        }).then((value){
      print('setUserList2');
    });
  }


  fetchUserInfo() async {
    final now = DateTime.now();
    time = DateFormat('dd-MM-yyyy').format(now);
    User? get = await FirebaseAuth.instance.currentUser;
    userID = get!.uid;
    db_email = get.email!;

  }
  getData() async{
    User? user =  FirebaseAuth.instance.currentUser;
    userID = user!.uid;
    await FirebaseFirestore.instance.collection("user").doc(user.uid).get().then((db){



      return [
        db.data()!['Aktivitaet']== null ? db_Aktivitaet = '--' : db_Aktivitaet = db.data()!['Aktivitaet'],
        db.data()!['groesse in Cm']== null ? db_groesse = '0.0' : db_groesse = db.data()!['groesse in Cm'] ,
        db.data()!['alter']== null ? db_alter = '0.0' : db_alter = db.data()!['alter'] ,
        db.data()!['geschlecht']== null ? db_geschlecht = '--' : db_geschlecht = db.data()!['geschlecht'] ,
        db.data()!['ziel']== null ? db_ziel = '--' : db_ziel = db.data()!['ziel'] ,
        db.data()!['gewicht in Kg']== null ? db_gewicht = '0.0' : db_gewicht = db.data()!['gewicht in Kg'] ,
        db.data()!['zielkey']== null ? ziel = '0' : ziel = db.data()!['zielkey'] ,

      ];
    });
    setState(() {
    });
  }

  void reset(){

    setsteps(_steps);
  }

  void onStepCount(StepCount event) {

    print(event);

    setState(() {
      _steps = event.steps;
      timer = Timer.periodic(Duration(minutes:3), (tm) {
        updatesteps(_steps);
      });
      if(altUserId != userID){

        setuserid(userID);
        setsteps(_steps);
        setsteps();
        print('steps is 0');

      }
      int neu = _steps - savedsteps;
      neusteps = neu ;
      double km = (neusteps* 0.77);
      String r = km.toStringAsFixed(2);
      double kcal = (neusteps*0.039);
      String k = kcal.toStringAsFixed(2);
      reichweite = r;
      kalorie = k;
    });


  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
    setState(() {
      _status = event.status;
    });
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
    setState(() {
      _status = 'Pedestrian Status not available';
    });
    print(_status);
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    setState(() {
      _steps = 0;
    });
  }

  void initPlatformState() {
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }



  @override
  Widget build(BuildContext context) {
    final height=1;
    final width=1;
    return
      Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: Container(
            //padding: EdgeInsets.zero,
            color: Colors.deepPurple[100],

            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                    height: 80.0,
                    child: DrawerHeader(
                      padding:
                      const EdgeInsets.only(
                          left: 10.0, right: 0.0, bottom: 0.0, top: 0.0),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                      ),
                      child: Text(
                        'Hi, $db_email',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 0.0, bottom: 0.0, top: 0.0),

                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alte Angaben:',
                          style: TextStyle(

                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height:7,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Größe: ',
                              style: TextStyle(

                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '$db_groesse Cm',
                              style: TextStyle(

                                fontSize: 14.0,

                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:7,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gewicht: ',
                              style: TextStyle(

                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '$db_gewicht Kg',
                              style: TextStyle(

                                fontSize: 14.0,

                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:7,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alter: ',
                              style: TextStyle(

                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '$db_alter Jahre',
                              style: TextStyle(

                                fontSize: 14.0,

                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:7,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Geschlecht: ',
                              style: TextStyle(

                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              db_geschlecht,
                              style: TextStyle(

                                fontSize: 14.0,

                                color: Colors.black,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height:7,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ziel:',
                              style: TextStyle(

                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              db_ziel,
                              style: TextStyle(

                                fontSize: 14.0,

                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),


                        SizedBox(
                          height:7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Aktivität: ',
                              style: TextStyle(

                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                db_Aktivitaet,
                                style: TextStyle(

                                  fontSize: 14.0,

                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),

                      ]
                  ),

                ),
                SizedBox(
                  height:100,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(

                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextButton(
                          onPressed: () {
                            setuserid(userID);
                            context.read<AuthService>().signOut();

                          },
                          child: Text(
                            'Ausloggen',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                      SizedBox(
                        height:100,
                      ),
                    ]
                ),


              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Sport',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/Sportart.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken),
          )),
          child: ListView(
            children: [Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                            color: Colors.deepPurple,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ihre Angaben für:',
                                    style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 3.0,
                                          color: Colors.black,
                                        ),
                                      ],
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    time,
                                    style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 3.0,
                                          color: Colors.black,
                                        ),
                                      ],
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:15,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'schritte:',
                                    style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 3.0,
                                          color: Colors.black,
                                        ),
                                      ],
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '$neusteps',
                                    style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 3.0,
                                          color: Colors.black,
                                        ),
                                      ],
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:15,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Reichweite:',
                                    style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 3.0,
                                          color: Colors.black,
                                        ),
                                      ],
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '$reichweite m',
                                    style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 3.0,
                                          color: Colors.black,
                                        ),
                                      ],
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height:15,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Verbracuhte Kacl:',
                                    style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 3.0,
                                          color: Colors.black,
                                        ),
                                      ],
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '$kalorie Kcal',
                                    style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(3.0, 3.0),
                                          blurRadius: 3.0,
                                          color: Colors.black,
                                        ),
                                      ],
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),




                            ]
                        ),
                      ),
                    ),
                    SizedBox(
                      height:25,
                    ),
                    Center(
                      child: _RadialProgress(
                        width: width*110,
                        height: height*110,
                        progress:  neusteps == 0.0
                            ? 00
                            : ( neusteps/10000.0),
                      ),
                    ),
                    SizedBox(
                      height:20,
                    ),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: Text(
                        'Um Ihre Ziel zu erreichen: ',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 3.0,
                              color: Colors.black,
                            ),
                          ],
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: passendeSport(),
                          ),


                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: Text(
                        'Das könnte Ihnen gefallen:',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 3.0,
                              color: Colors.black,
                            ),
                          ],
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          for (int i = 0; i < 7; i++)
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: allgemaeineSport(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                  ]),
            ),]
          ),
        ),
      );

  }
  void getNots() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      savedsteps = pref.getInt('savedsteps')!;
      altUserId = pref.getString('saveId')!;
    });
  }

  Row passendeSport() {

    switch (int.parse(ziel)) {
      case 1:
        return Row(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Ink.image(
                        image: AssetImage('assets/sportabnahme1.png'),
                        height: 160,
                        width: 162,
                        fit: BoxFit.cover,
                      ),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      color: Colors.white,
                      width: 150,
                      height:60,
                      child: Center(
                        child: Text(
                          'Joggen',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  TextButton(
                    child: Text('mehr'),
                    onPressed: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sportabnahme1()));},
                  ),

                ],
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0,top : 5.0),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Ink.image(
                        image: AssetImage('assets/sportabnahme2.png'),
                        height: 160,
                        width: 162,
                        fit: BoxFit.cover,
                      ),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      color: Colors.white,
                      width: 150,
                      height:60,
                      child: Center(
                        child: Text(
                          'Nordic Walking',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  TextButton(
                    child: Text('mehr'),
                    onPressed: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sportabnahme2()));},
                  ),

                ],
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0,top : 5.0),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Ink.image(
                        image: AssetImage('assets/sportabnahme3.png'),
                        height: 160,
                        width: 162,
                        fit: BoxFit.cover,
                      ),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      color: Colors.white,
                      width: 150,
                      height:60,
                      child: Center(
                        child: Text(
                          'Radfahren oder Spinning',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  TextButton(
                    child: Text('mehr'),
                    onPressed: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sportabnahme3()));},
                  ),

                ],
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0,top : 5.0),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Ink.image(
                        image: AssetImage('assets/sportabnahme4.png'),
                        height: 160,
                        width: 162,
                        fit: BoxFit.cover,
                      ),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      color: Colors.white,
                      width: 150,
                      height:60,
                      child: Center(
                        child: Text(
                          'Schwimmen',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  TextButton(
                    child: Text('mehr'),
                    onPressed: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sportabnahme4()));},
                  ),

                ],
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0,top : 5.0),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Ink.image(
                        image: AssetImage('assets/sportabnahme5.png'),
                        height: 160,
                        width: 162,
                        fit: BoxFit.cover,
                      ),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      color: Colors.white,
                      width: 150,
                      height:60,
                      child: Center(
                        child: Text(
                          'Aerobic, Tanzen, Zumba',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  TextButton(
                    child: Text('mehr'),
                    onPressed: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sportabnahme5()));},
                  ),

                ],
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0,top : 5.0),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Ink.image(
                        image: AssetImage('assets/sportabnahme6.png'),
                        height: 160,
                        width: 162,
                        fit: BoxFit.cover,
                      ),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      color: Colors.white,
                      width: 150,
                      height:60,
                      child: Center(
                        child: Text(
                          'In der Fitness Sport treiben',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  TextButton(
                    child: Text('mehr'),
                    onPressed: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sportabnahme6()));},
                  ),

                ],
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0,top : 5.0),
            ),
          ],
        );
      case 2:
        return Row(
          children: [Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/Fit.jpg'),
                      height: 160,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Gesund',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'beibehalten',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('gut'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text('schlecht'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
    ]
        );
      case 3:
        return Row(
          children: [Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/Fit.jpg'),
                      height: 160,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Gesund',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'zunahme',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('gut'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text('schlecht'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),]
        );

      default:
        return Row();
    }
  }

  Column allgemaeineSport() {

    switch (int.parse(ziel)) {
      case 1:
        return Column(children: [
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/Fit.jpg'),
                      height: 160,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Gesund',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'zunahme',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('gut'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text('schlecht'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/Fit.jpg'),
                      height: 160,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Gesund',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'beibehalten',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('gut'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text('schlecht'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          )
        ]);
      case 2:
        return Column(children: [
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/Fit.jpg'),
                      height: 160,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Gesund1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'abnahme',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('gut'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text('schlecht'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/Fit.jpg'),
                      height: 160,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Gesund',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'zunahme',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('gut'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text('schlecht'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ]);

      case 3:
        return Column(children: [
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/Fit.jpg'),
                      height: 160,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Gesund1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'abnahme',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('gut'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text('schlecht'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/Fit.jpg'),
                      height: 160,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        'Gesund',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'beibehalten',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('gut'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text('schlecht'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ]);


      default:
        return Column();

    }
  }

}

class _RadialProgress extends StatelessWidget {
  final double height, width, progress;


   _RadialProgress(
      {Key? key,
      required this.height,
      required this.width,
      required this.progress,
      })
      : super(key: key);



  @override

  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(
        progress: progress,
      ),
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: Icon(Icons.directions_run,color: Colors.white,),

        ),
      ),
    );
  }


}





class _RadialPainter extends CustomPainter {
  final double progress;

  _RadialPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 6
      ..color =Colors.deepPurple
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double relativeProgress = 360 * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: size.width / 2),
      math.radians(-90),
      math.radians(-relativeProgress),
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}









