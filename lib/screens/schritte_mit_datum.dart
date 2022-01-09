import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class Schritte extends StatefulWidget {
  const Schritte({Key? key}) : super(key: key);

  @override
  _SchritteState createState() => _SchritteState();
}

class _SchritteState extends State<Schritte> {

  @override
  Widget build(BuildContext context) {
    User? user =  FirebaseAuth.instance.currentUser;
    CollectionReference Schritte_mit_Datum =
    FirebaseFirestore.instance.collection("user").doc(user!.uid).collection('Schritte_mit_Datum');

    return
      Scaffold(
        appBar: AppBar(
          title: Text(
            'Schritte Mit Datum',
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
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Sportart.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken),
                )),
            child: StreamBuilder(
                stream: Schritte_mit_Datum.snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: Text('Loading'));
                  }
                  return ListView(
                    children: snapshot.data!.docs.map((history) {
                      String id = history.id;
                      String data = history.data().toString();
                      return Center(
                        child: ListTile(
                          title: Text('$id:',
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
                          subtitle: Text(data,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }),
          ),
        ),

      );

  }
}