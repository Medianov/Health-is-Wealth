import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import 'package:untitled/search.dart';
import 'package:untitled/sportart.dart';
import 'DatabaseManager.dart';
import 'essencards.dart';

import 'auth.dart';




class Essen extends StatefulWidget {
  const Essen({Key? key}) : super(key: key);

  @override
  _EssenState createState() => _EssenState();
}



class _EssenState extends State<Essen> {
  String db_carbs='';
  String db_fett='';
  String db_protein='';
  String db_wassermenge='';
  String db_kalorie='';
  String db_zielerreichen='';
  String db_email='';
  String userID='';
  String ziel = '0';
  String aktivitaet = '0';
  String db_bmiwert ='0.0';
  String db_geschlecht='';
  String db_ziel='';
  String db_Aktivitaet='';
  String db_groesse='';
  String db_gewicht='';
  String db_alter ='';


  @override
  void initState() {
    super.initState();
    getData();
    fetchUserInfo();
  }





  @override
  Widget build(BuildContext context) {

  return Scaffold(
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
                          'Ziel: ',
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
                ]
            ),


          ],
        ),
      ),
    ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          /*IconButton(
            icon: Icon(Icons.arrow_back),
            tooltip: 'Search',
            onPressed: () => Navigator.pop(context),
          ),*/
        ],
        title: Text(
          'Essen',
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
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: ListView(
          children: [Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [



                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(

                              border: Border.all(
                                width: 2.0,
                                color: Colors.deepPurple,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5.0),
                          child: Text(
                            'Kalorienbedarf:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5.0),
                          child: Text('$db_kalorie Kcal',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(

                              border: Border.all(
                                width: 2.0,
                                color: Colors.deepPurple,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5.0),
                          child: Text(
                            'Ziel Calorie',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5.0),
                          child: Text('$db_zielerreichen Kcal',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(

                                border: Border.all(
                                  width: 2.0,
                                  color: Colors.deepPurple,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 5.0),
                            child: Text(
                              'Fett:',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 5.0),
                            child: Text('$db_fett g',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(

                                  border: Border.all(
                                    width: 2.0,
                                    color: Colors.deepPurple,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 5.0),
                              child: Text(
                                'Carbs:',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 5.0),
                              child: Text('$db_carbs g',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(

                                  border: Border.all(
                                    width: 2.0,
                                    color: Colors.deepPurple,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 5.0),
                              child: Text(
                                'Protein:',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 5.0),
                              child:Text('$db_protein g',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ]),
            ]
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(

                              border: Border.all(
                                width: 2.0,
                                color: Colors.deepPurple,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5.0),
                          child: Text(
                            'Wassermenge:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5.0),
                          child: Text('$db_wassermenge L',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));},
                    child: Text(
                      'Lebensmitteltabelle anschauen?',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(

                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    child: Text(
                      'Gesunde Rezepte:',
                      style: TextStyle(
                        shadows: [Shadow(
                          offset: Offset(3.0, 3.0),
                          blurRadius: 3.0,
                          color: Colors.black,
                        ),],
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
                            child: passendesEssen(),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ]),
          ),]
        ),
      ),
    );
  }

  Row passendesEssen() {

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
                        image: AssetImage('assets/essenabnahme1.jpg'),
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
                          'Vegetable Skewers of Olives,Tomatoes,and Monterey Jack Cheese',
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
                        MaterialPageRoute(builder: (context) => essenabnahme1()));},
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
                        image: AssetImage('assets/essenabnahme2.jpg'),
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
                          'Chinese Chicken Salad PROTEIN',
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
                        MaterialPageRoute(builder: (context) => essenabnahme2()));},
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
                        image: AssetImage('assets/essenabnahme3.jpg'),
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
                          'BBQ Chicken Salad',
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
                        MaterialPageRoute(builder: (context) => essenabnahme3()));},
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
                        image: AssetImage('assets/essenabnahme4.jpg'),
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
                          'Hearts of Romaine with Balsamic Vinegar and Shallots',
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
                        MaterialPageRoute(builder: (context) => essenabnahme4()));},
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
                        image: AssetImage('assets/essenabnahme5.jpg'),
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
                          'Orzo Salad with Red Bell Pepper and Fresh Herbs',
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
                        MaterialPageRoute(builder: (context) => essenabnahme5()));},
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
                        image: AssetImage('assets/essenabnahme6.jpg'),
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
                          'Salad of Green Beans, Bacon, and Warm Gorgonzola Dressing ',
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
                        MaterialPageRoute(builder: (context) => essenabnahme6()));},
                  ),

                ],
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0,top : 5.0),
            ),
          ],
        );
      case 2:
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
                        image: AssetImage('assets/essenbeibehalten1.jpg'),
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
                          'Oatmeal Buttermilk Pancakes ',
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
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => essenbeibehalten1()));},
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
                        image: AssetImage('assets/essenbeibehalten2.jpg'),
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
                          'Grilled Chicken Breasts with Crisp Bacon and Gouda Cheese ',
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
                        MaterialPageRoute(builder: (context) => essenbeibehalten2()));},
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
                        image: AssetImage('assets/essenbeibehalten3.jpg'),
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
                          'Waffles with Fresh Fruit Cream',
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
                        MaterialPageRoute(builder: (context) => essenbeibehalten3()));},
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
                        image: AssetImage('assets/essenbeibehalten4.jpg'),
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
                          'Caesar Salad with Grilled Steak',
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
                        MaterialPageRoute(builder: (context) => essenbeibehalten4()));},
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
                        image: AssetImage('assets/essenbeibehalten5.jpg'),
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
                          'Cream Cheese French Toast',
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
                        MaterialPageRoute(builder: (context) => essenbeibehalten5()));},
                  ),

                ],
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0,top : 5.0),
            ),
          ],
        );
      case 3:
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
                        image: AssetImage('assets/essenzunahme1.png'),
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
                          'Eiweissbrot-Sandwich mit Raeuchertofu, Avocado & Sprossen',
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
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => essenzunahme1()));},
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
                        image: AssetImage('assets/essenzunahme2.png'),
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
                          'Griechische Bauernpfanne',
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
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => essenzunahme2()));},
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
                        image: AssetImage('assets/essenzunahme3.png'),
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
                          'Klassisches Ruehrei',
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
                        MaterialPageRoute(builder: (context) => essenzunahme3()));},
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
                        image: AssetImage('assets/essenzunahme4.png'),
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
                          'Herzhafte Hackfleisch-Tarte',
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
                        MaterialPageRoute(builder: (context) => essenzunahme4()));},
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
                        image: AssetImage('assets/essenzunahme5.png'),
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
                          'Milchreis mit Karamell-Aepfeln',
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
                        MaterialPageRoute(builder: (context) => essenzunahme5()));},
                  ),

                ],
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0,top : 5.0),
            ),
          ],
        );
      default:
        return Row();
    }
  }

  fetchUserInfo() async {
    User? get = await FirebaseAuth.instance.currentUser;
    userID = get!.uid;
    db_email = get.email!;

  }
  getData() async{


    User? user =  FirebaseAuth.instance.currentUser;
    userID = user!.uid;
    await FirebaseFirestore.instance.collection("user").doc(user.uid).get().then((db){

      return [
        db.data()!['kalorie']== null ?  db_kalorie = '--' :  db_kalorie = db.data()!['kalorie'] ,
        db.data()!['zielerreichen']== null ? db_zielerreichen = '--' : db_zielerreichen = db.data()!['zielerreichen'] ,
        db.data()!['fett in g']== null ? db_fett = '--' : db_fett = db.data()!['fett in g'] ,
        db.data()!['carbs in g']== null ? db_carbs = '--' : db_carbs = db.data()!['carbs in g'] ,
        db.data()!['protein in g']== null ? db_protein = '--' : db_protein = db.data()!['protein in g'] ,
        db.data()!['wassermenge in L']== null ? db_wassermenge = '--' : db_wassermenge = db.data()!['wassermenge in L'] ,
        db.data()!['bmi wert']== null ? db_bmiwert = '0.0' : db_bmiwert = db.data()!['bmi wert'] ,
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

  }
  
