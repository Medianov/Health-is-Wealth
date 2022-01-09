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
          'Sie haben sich erfolgreich eingeloggt')).toString();
    }on FirebaseAuthException catch (e){
      switch(e.message) {
        case 'There is no user record corresponding to this identifier. The user may have been deleted.':
          Fluttertoast.showToast(timeInSecForIosWeb: 3,msg: 'Diese E-Mail-Adresse hat noch kein Konto');
          break;
        case 'The password is invalid or the user does not have a password.':
          Fluttertoast.showToast(timeInSecForIosWeb: 3,msg: 'falsche E-Mail-Adresse oder Passwort eingegeben');
          break;
        case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
          Fluttertoast.showToast(timeInSecForIosWeb: 3,msg: 'Netzwerkfehler');
          break;
        case 'The email address is badly formatted.':
          Fluttertoast.showToast(msg: 'Falsches Format in der E-Mail Adresse');
          break;
    }

    }
  }

  Future<String?> passwort(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return (Fluttertoast.showToast(
          timeInSecForIosWeb: 5,
          msg:
          "Der Link zum Zuruecksetzen des Passworts wurde an Ihre E-Mail gesendet. Bitte verwenden Sie ihn, um das Passwort zu aendern.")).toString();
    } on FirebaseAuthException catch (e) {
      switch(e.message) {
        case 'There is no user record corresponding to this identifier. The user may have been deleted.':
          Fluttertoast.showToast(timeInSecForIosWeb: 3,msg: 'Diese E-Mail-Adresse hat noch kein Konto');
          break;
        case 'The email address is badly formatted.':
          Fluttertoast.showToast(msg: 'Falsches Format in der E-Mail Adresse');
          break;
        case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
          Fluttertoast.showToast(timeInSecForIosWeb: 3,msg: 'Netzwerkfehler');
          break;
      }
    }
  }



  Future<String?> signUp(String email, String password) async {

    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password).then((value) async {


        User? user = FirebaseAuth.instance.currentUser;

        String dateString = DateTime.now().toString();
        var dateTime = DateTime.parse(dateString);
        var datum = "${dateTime.day}-${dateTime.month}-${dateTime.year}";


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
              'Schritte am':
              {'$datum':null},


            });
          await FirebaseFirestore.instance
              .collection('user')
              .doc(user.uid)
              .collection('Schritte_mit_Datum').doc('$datum')
              .set({'Schritte': null, 'Reichweite in m': null, 'Kalorien':null});



      }


      );
      return ( Fluttertoast.showToast(
          timeInSecForIosWeb: 3,
          msg:
          "Glückwunsch, Sie haben ein neues Konto erstellt")).toString() ;
    }on FirebaseAuthException catch (e){
      switch(e.message) {
        case 'The email address is already in use by another account.':
          Fluttertoast.showToast(msg: "Diese E-Mail-Adresse gehört zu einem anderen Konto");
          break;
        case 'The email address is badly formatted.':
          Fluttertoast.showToast(msg: 'Falsches Format in der E-Mail Adresse');
          break;
        case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
          Fluttertoast.showToast(timeInSecForIosWeb: 3,msg: 'Netzwerkfehler');
          break;
        case 'Password should be at least 6 characters':
          Fluttertoast.showToast(timeInSecForIosWeb: 3,msg: 'Das Passwort sollte mindestens 6 Zeichen lang sein');
          break;
      }

    }
  }
}