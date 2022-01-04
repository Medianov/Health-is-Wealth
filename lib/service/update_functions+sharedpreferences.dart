import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';


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

}


void Update_User_Schritte(int schritte,String reichweite,String kalorien) async {
  print('Update_User_Schritte');


  await Firebase.initializeApp();
  User? user = await  FirebaseAuth.instance.currentUser;

  String dateString = DateTime.now().toString();
  var dateTime = DateTime.parse(dateString);
  var date = "${dateTime.day}-${dateTime.month}-${dateTime.year}";

  if (user != null) {
    await FirebaseFirestore.instance
        .collection('user')
        .doc(user.uid)
        .collection('Schritte_mit_Datum').doc('$date')
        .set({
    });
  }



  await FirebaseFirestore.instance
      .collection('user')
      .doc(user!.uid)
      .collection('Schritte_mit_Datum').doc('$date')
      .update({
    'Schritte': schritte,
    'Reichweite in m': reichweite,
    'Kalorien':kalorien
      });

}






void resetsteps() async {
  int? db_steps;

  final SharedPreferences pref = await SharedPreferences.getInstance();

  db_steps = pref.getInt('kurzfristig');
  setsteps(db_steps);
  print('steps is 0');

}

Future<void>setkurz(kurz) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setInt('kurzfristig',kurz);
}
Future<void>setsteps(save) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setInt('savedsteps',save);
}

Future<void> setuserid(saveId) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('saveId',saveId);
}

Future<void> setNotesData(getvalue) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('values',getvalue);
}

