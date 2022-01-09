import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../cards/sportcards.dart';
import 'package:intl/intl.dart';
import 'package:pedometer/pedometer.dart';
import 'package:provider/src/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'schritte_mit_datum.dart';
import '../service/RadialProgress.dart';
import '../service/update_functions+sharedpreferences.dart';
import '../service/auth.dart';







String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}



class Sportart extends StatefulWidget {

  Sportart({Key? key}) : super(key: key);

  @override
  _SportartState createState() => _SportartState();



}

class _SportartState extends State<Sportart> {



  String time ='?';
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
  int cache =0;
  int cachepreferences=0;
  String reichweite = '0';
  String kalorie = '0';






  @override
  void initState(){
    super.initState();
    fetchUserInfo();
    getData();
    initPlatformState();




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
                          'Ihre alten Angaben:',
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
                            ]
                        ),
                        SizedBox(
                          height:100,
                        ),

                      ]
                  ),

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
                                      'Angaben für: ',
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
                                      'Kalorien:',
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
                        height:15,
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Schritte()));},
                          child: Text('Schritte Mit Datum',

                            style: TextStyle(

                                shadows: [
                                  Shadow(
                                    offset: Offset(3.0, 3.0),
                                    blurRadius: 4.0,
                                    color: Colors.black,
                                  ),
                                ],
                                color: Colors.blue, fontSize: 17),
                          ),),
                      ),
                      SizedBox(
                        height:25,
                      ),



                      Center(
                        child: RadialProgress(
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
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: allgemeineSport(),
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

  passendeSport() {

    switch (int.parse(ziel)) {
      case 1:
        return sportabnahme();
      case 2:
        return sportbeibehalten();
      case 3:
        return sportzunahme();

      default:
        return Row();
    }
  }

  Row allgemeineSport() {

    switch (int.parse(ziel)) {
      case 1:
        return Row(
            children: [
              sportbeibehalten(),
              sportzunahme(),

            ]);
      case 2:
        return Row(
            children: [
              sportabnahme(),
              sportzunahme(),


            ]);

      case 3:
        return Row(
            children: [
              sportabnahme(),
              sportbeibehalten(),
            ]);


      default:
        return Row();

    }
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


  void onStepCount(StepCount event) async{
    await Firebase.initializeApp();
    final SharedPreferences pref = await SharedPreferences.getInstance();
    User? user =  FirebaseAuth.instance.currentUser;
    userID = user!.uid;
    String dateString = DateTime.now().toString();
    var dateTime = DateTime.parse(dateString);
    var datum = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
    await FirebaseFirestore.instance.collection("user").doc(userID).get().then((db){
      return db.data()!['Schritte am']['$datum'] == null ? cache = 0 : cache =db.data()!['Schritte am']['$datum'];
    });

    print(event);
    int neu;
    _steps = event.steps;

    //Handy schritte werden gespeichert, um aufgerufen zu werden (wenn neue User kommt oder wenn der Tag vorbei ist)
    setkurz(event.steps);

    //wenn cache geleert wurde und Handy heruntergefahren und neugestartet wurde (zusammen)
    pref.getInt('savedsteps')== null ? setcache(cache) : savedsteps = pref.getInt('savedsteps')!;
    //wenn cache geleert wurde
    pref.getInt('savedsteps')== null ? setsteps(_steps)  : savedsteps = pref.getInt('savedsteps')!;
    pref.getString('saveId')== null ? setuserid(userID) : altUserId = pref.getString('saveId')!;


    //wenn neue User kommt
    if(altUserId != userID){
      setcache(cache);
      setuserid(userID);
      resetsteps();
    }

    //wenn Handy heruntergefahren wurde
    if(savedsteps > _steps){
      setcache(cache);
      setsteps(_steps);
    }
    //wenn keine neue schritte gezählt wird, nachdem Handy starten
    if(savedsteps == _steps){
      setcache(cache);
    }
    //wenn cache geleert wurde und die Function cache_schritte_leeren() wird aufgerufen (wenn der Tag vorbei ist)
    pref.getInt('cache')== null ? cachepreferences =0 : cachepreferences = pref.getInt('cache')!;


    altUserId != userID || savedsteps > _steps? neu = 0 :  neu = _steps -  savedsteps + cachepreferences;
    //wenn keine neue schritte gezählt wird (wenn cache geleert wurde und Handy heruntergefahren und neugestartet wurde *zusammen*)
    if(_steps > savedsteps && pref.getInt('savedsteps') != null){
      Update_Cache_Schritte(neu);
    }

    neusteps = neu ;
    double km = (neusteps* 0.77);
    String r = km.toStringAsFixed(2);
    double kcal = (neusteps*0.039);
    String k = kcal.toStringAsFixed(2);
    //wenn keine neue schritte gezählt wird (wenn cache geleert wurde und Handy heruntergefahren und neugestartet wurde  *zusammen*)
    if(_steps > savedsteps && pref.getInt('savedsteps') != null){
      Update_User_Schritte(neu,r,k);
    }

    reichweite = r;
    kalorie = k;




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

    if (mounted) return;
  }

}