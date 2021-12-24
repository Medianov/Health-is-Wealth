import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/sportart.dart';


class DatabaseManager {


  final CollectionReference user =
  FirebaseFirestore.instance.collection('user');

  Future updateUserList(
      String groesse,
      String gewicht,
      String alter ,
      String bmiwert,
      String geschlecht,
      String ziell,
      String Aktivitaet,
      String kalorie,
      String zielerreichen,
      String fett,
      String carbs,
      String protein,
      String wassermenge,
      String zielkey,
      String uid
      ) async {

    return await user.doc(uid).update({
      'groesse in Cm': groesse,
      'gewicht in Kg': gewicht,
      'alter': alter,
      'bmi wert' :bmiwert,
      'geschlecht':geschlecht,
      'ziel': ziell,
      'Aktivitaet': Aktivitaet,
      'kalorie':kalorie,
      'zielerreichen':zielerreichen,
      'fett in g':fett,
      'carbs in g':carbs,
      'protein in g':protein ,
      'wassermenge in L':wassermenge,
      'zielkey':zielkey,
    });
  }
  Future updateUserList2(
       int schritte,
       String reichweite,
       String Kcal,
      String uid,
      ) async {
    String dateString = DateTime.now().toString();
    var dateTime = DateTime.parse(dateString);
    var date = "${dateTime.minute}-${dateTime.hour}-${dateTime.minute}-${dateTime.hour}-${dateTime.day}-${dateTime.month}-${dateTime.year}";

    return await user.doc(uid).collection('schrittzaehler Angaben').doc(date).update({
          'schritte': schritte,
          'reichweite': reichweite,
          'Kcal': Kcal,
    });
  }



}

Future updatesteps(int steps


    ) async {
  await Firebase.initializeApp();
  print(steps);

  return await FirebaseFirestore.instance.collection("steps").doc('step').update({
    'steps': steps,

  });

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



resetsteps() async {
  int? db_steps;
  await Firebase.initializeApp();
  await FirebaseFirestore.instance.collection("steps").doc('step').get().then((
      db) {
    return
   db.data()!['steps'] == null ? db_steps = 0 : db_steps = db.data()!['steps'];
  });


  setsteps(db_steps);
  print(db_steps);
}

Future<void> setsteps(save) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setInt('savedsteps',save);
}
Future<void> setuserid(saveId) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('saveId',saveId);
}