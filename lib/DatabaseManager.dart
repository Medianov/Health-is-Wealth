import 'package:cloud_firestore/cloud_firestore.dart';
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

Future updatesteps(int steps) async {
  await Firebase.initializeApp();
  print(steps);

  return await FirebaseFirestore.instance.collection("steps").doc('step').update({
    'steps': steps,

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