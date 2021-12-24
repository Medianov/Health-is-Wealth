import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  final FirebaseAuth _auth;

  AuthService(this._auth);

  Stream<User?> get authStateChanges => _auth.idTokenChanges();


  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<String?> login(String email, String password) async {

    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return (Fluttertoast.showToast(
          timeInSecForIosWeb: 3,
          msg:
          "Sie haben sich erfolgreich eingeloggt")).toString();
    } catch (e) {
      return(Fluttertoast.showToast(
          timeInSecForIosWeb: 3,
          msg:
          "Diese E-Mail-Adresse hat noch kein Konto oder falsche E-Mail oder Password eingegeben")).toString();
    }
  }

  Future<String?> signUp(String email, String password) async {

    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password).then((value) async {
        String dateString = DateTime.now().toString();
        var dateTime = DateTime.parse(dateString);
        var date = "${dateTime.minute}-${dateTime.hour}-${dateTime.day}-${dateTime.month}-${dateTime.year}";

        User? user = FirebaseAuth.instance.currentUser;


        await FirebaseFirestore.instance.collection("user").doc(user!.uid).set(
            {
              'uid': user.uid,
              'email': email,
              'password': password,
              'bmi wert' :null,
              'Aktivitaet':null,
              'groesse in Cm': null,
              'gewicht in Kg': null,
              'alter': null,
              'kalorie':null,
              'zielerreichen':null,
              'fett in g':null,
              'carbs in g':null,
              'protein in g':null ,
              'wassermenge in L':null,
              'geschlecht':null,
              'ziel': null,
              'zielkey':null,

            });
        await FirebaseFirestore.instance.collection("user").doc(user.uid).collection('schrittzaehler Angaben').doc(date).set(
            {
              'schritte': null,
              'reichweite': null,
              'Kcal': null,

            });
      });
      return (Fluttertoast.showToast(
          timeInSecForIosWeb: 3,
          msg:
          "Glückwunsch, Sie haben ein neues Konto erstellt")).toString() ;
    } catch (e) {
      return (Fluttertoast.showToast(
          timeInSecForIosWeb: 3,
          msg:
          "Diese E-Mail-Adresse gehört zu einem anderen Konto")).toString();

    }

  }


}



