import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'dart:core';
import '../service/update_functions+sharedpreferences.dart';
import '../service/auth.dart';

class KeyValueModel {

  String key;
  String value;


  KeyValueModel({required this.key, required this.value});
}
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController groesseController = TextEditingController();
  TextEditingController gewichtController = TextEditingController();
  TextEditingController alterController = TextEditingController();
  final _key = GlobalKey<FormState>();
  double groesse = 0.0;
  double gewicht = 0.0;
  double alter = 0.0;
  bool geschlechtvalue = false;
  String? beschreibung;
  String? bmiwert;
  String? carbs;
  String? fett;
  String? protein;
  String? wassermenge;
  String? kalorie;
  String? zielerreichen;
  String? geschlecht ;
  String? ziell;
  String? Aktivitaet;

  String ziel = '0';
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

  
  @override
  void initState() {
    super.initState();
    fetchUserInfo();
    getData();

  }




  @override
  Widget build(BuildContext context) {
    List<KeyValueModel> aktivitaetlist = [
      KeyValueModel(key:'1.schlafen', value: '1'),
      KeyValueModel(key:'2.ausschließlich sitzend/ liegend', value: '2'),
      KeyValueModel(key:'3.vorwiegend sitzende Tätigkeit, kaum körperliche Aktivität', value: '3'),
      KeyValueModel(key:'4.überwiegend sitzende Tätigkeit, dazwischen auch stehend/ gehend', value: '4'),
      KeyValueModel(key:'5.hauptsächlich stehende und gehende Aktivitäten', value: '5'),
      KeyValueModel(key:'6.körperlich anstrengende Arbeiten', value: '6'),

    ];
    List<KeyValueModel> ziellist = [
      KeyValueModel(key:'1.Abnahme', value: '1'),
      KeyValueModel(key:'2.Beibehalten', value: '2'),
      KeyValueModel(key:'3.Zunahme', value: '3'),
    ];

    return Scaffold(
      extendBody: true,
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
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text(
          'Startseite',
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
      body: Form(
        key: _key,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Home.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.grey.shade700, BlendMode.darken),
              )),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: Text(
                        'Ihre Angaben: ',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black,
                            ),
                          ],
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            'Größe:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                          width: 125,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty || double.parse(value) <= 0.0) {
                                return 'error';
                              } else
                                return null;
                            },
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            keyboardType: TextInputType.number,
                            controller: groesseController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'bitte eingeben',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),

                              labelText: 'Cm',
                              labelStyle: TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                              filled: true,
                              //fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            'Gewicht:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                          width: 125,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty || double.parse(value) <= 0.0) {
                                return 'error';
                              } else
                                return null;
                            },
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            keyboardType: TextInputType.number,
                            controller: gewichtController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'bitte eingeben',
                              hintStyle: TextStyle(color: Colors.white),
                              labelText: 'Kg',
                              labelStyle: TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            'Alter:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                          width: 125,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty || double.parse(value) <= 0.0) {
                                return 'error';
                              } else
                                return null;
                            },
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            keyboardType: TextInputType.number,
                            controller: alterController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'bitte eingeben',
                              hintStyle: TextStyle(color: Colors.white),
                              labelText: 'Jahre',
                              labelStyle: TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[100],
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 5.0),
                            child: Icon(Icons.female,
                                color: Colors.white, size: 50)),
                        Switch(
                            value: geschlechtvalue,
                            inactiveTrackColor: Colors.deepPurple[100],
                            activeTrackColor: Colors.blue[200],
                            onChanged: (bool b) {
                              setState(() {
                                geschlechtvalue = b;
                              });
                            }),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 5.0),
                            child:
                            Icon(Icons.male, color: Colors.white, size: 50)),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Bitte geben Sie Ihre Angaben an:',
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Colors.black,
                          ),
                        ],
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: Text(
                        'Aktivität:',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black,
                            ),
                          ],
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ),


                    SizedBox(
                      height: 30,
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      //value: _selectedValue,
                      icon: Icon(
                        Icons.arrow_downward,
                        color: Colors.deepPurple,
                      ),
                      iconSize: 20,
                      elevation: 16,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      onChanged: (String? value) {
                        setState(() {

                          aktivitaet = value!;
                        });
                      },
                      items: aktivitaetlist

                          .map((data) => DropdownMenuItem<String>(

                        child: Text(data.key),
                        value: data.value,
                      )).toList(),

                      hint: Text(aktivitaet, style:TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: Text(
                        'Ziel: ',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black,
                            ),
                          ],
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      //value: _selectedValue,
                      icon: Icon(
                        Icons.arrow_downward,
                        color: Colors.deepPurple,
                      ),

                      iconSize: 20,
                      elevation: 16,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      onChanged: (String? value) {
                        setState(() {

                          ziel = value!;

                        });
                      },
                      items: ziellist

                          .map((data) => DropdownMenuItem<String>(
                        child: Text(data.key),
                        value: data.value,
                      )).toList(),
                      hint: Text(ziel, style:TextStyle(
                        color: Colors.white,
                      ),),

                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                              onPressed: () {
                                if (_key.currentState!.validate()) {
                                }
                                setState(() {
                                  groesse =
                                      double.parse(groesseController.value.text);
                                  gewicht =
                                      double.parse(gewichtController.value.text);
                                  alter =
                                      double.parse(alterController.value.text);

                                });
                                Bmirechner(groesse, gewicht);
                                Kaloriesrechner(groesse, gewicht, alter);
                                Wassermenge(gewicht, alter);
                                Zielerreichen();
                                Carbs();
                                Fett();
                                Protein();
                                Update(context);
                                getData();
                              },
                              child: Text('Berechnen',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  )),
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 30,
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
                              'BMI Wert:',
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
                            child: Text(
                              db_bmiwert,
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
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                            color: Colors.deepPurple,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: Text(
                        'Beschreibung:',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: getBeschreibung()
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    );



  }

  void Bmirechner(double groesse, double gewicht) {
    if (gewicht >0.0 && groesse > 0.0){
    double finalresult = gewicht / (groesse * groesse / 10000);
    String bmi = finalresult.toStringAsFixed(2);
    setState(() {
      bmiwert = bmi;
    });}
  }
  void Kaloriesrechner(double height, double weight, double alter) {
    double grundkalorie;
    double finalkalorie;

    if (gewicht >0.0 && groesse > 0.0 && alter > 0.0) {
      if (geschlechtvalue) {
        grundkalorie =
        (655.0955 + (9.5634 * gewicht) + (1.8496 * groesse) - (4.6756 * alter));
        geschlecht = 'männlich';
      } else {
        grundkalorie =
        (66.4730 + (13.7516 * gewicht) + (5.0033 * groesse) - (6.7550 * alter));
        geschlecht = 'weiblich';
      }
      switch (int.parse(aktivitaet)) {
        case 1:
          finalkalorie = (grundkalorie * 0.95);
          Aktivitaet = 'schlafen';
          break;
        case 2:
          finalkalorie = (grundkalorie * 1.2);
          Aktivitaet = 'ausschließlich sitzend/ liegend';

          break;
        case 3:
          finalkalorie = (grundkalorie * 1.45);
          Aktivitaet =
          'vorwiegend sitzende Tätigkeit, kaum körperliche Aktivität';
          break;
        case 4:
          finalkalorie = (grundkalorie * 1.65);
          Aktivitaet =
          'überwiegend sitzende Tätigkeit, dazwischen auch stehend/ gehend';
          break;
        case 5:
          finalkalorie = (grundkalorie * 1.85);
          Aktivitaet = 'hauptsächlich stehende und gehende Aktivitäten';
          break;
        case 6:
          finalkalorie = (grundkalorie * 2.2);
          Aktivitaet = 'körperlich anstrengende Arbeiten';
          break;
        default:
          finalkalorie = grundkalorie;
          break;
      }

      String k = finalkalorie.toStringAsFixed(2);

      setState(() {
        kalorie = k;
      });
    }
  }
  void Zielerreichen() {
    setNotesData(kalorie);
    double z;

    switch (int.parse(ziel)) {
      case 1:
        z = ((double.parse(kalorie!) - 300.0));
        ziell = 'Abnahme';

        break;
      case 2:
        z = (double.parse(kalorie!));
        ziell = 'Beibehalten';


        break;
      case 3:
        z = ((double.parse(kalorie!) + 300.0));
        ziell= 'Zunahme';

        break;
      default:
        z = (double.parse(kalorie!));

        break;
    }

    String zz = z.toStringAsFixed(2);

    setState(() {
      zielerreichen = zz;
    });
  }
  void Wassermenge(double gewicht, double alter) {
    if (gewicht >0.0 && alter > 0.0) {
      double wasser = ((gewicht * alter) / 28.3) * (0.03);
      String w = wasser.toStringAsFixed(2);
      setState(() {
        wassermenge = w;
      });
    }
  }
  void Carbs() {
    setNotesData(zielerreichen);

    double finalcarbs = (double.parse(zielerreichen!) / 2) / 4;
    String c = finalcarbs.toStringAsFixed(2);
    setState(() {
      carbs = c;
    });
  }
  void Fett() {
    setNotesData(zielerreichen);
    double finalfett = (double.parse(zielerreichen!) * 0.28) / 9;
    String f = finalfett.toStringAsFixed(2);
    setState(() {
      fett = f;
    });
  }
  void Protein() {
    setNotesData(zielerreichen);
    double finalprotein = (double.parse(zielerreichen!) * 0.2) / 4;
    String p = finalprotein.toStringAsFixed(2);
    setState(() {
      protein = p;
    });
  }
  Text getBeschreibung() {
    double newresult = double.parse(db_bmiwert);
    if (newresult >= 25.0) {
      return
        Text('Dein BMI liegt im Bereich des Übergewichts. Versuch ein paar Kilo abzunehmen, um langfristig gesund und leistungsfähig zu bleiben',style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          color: Colors.white,
        ),);
    } else if (newresult > 18.5) {
      return
        Text('Dein BMI liegt im Bereich des Normalgewichts. Versuch dein Gewicht zu halten und entdecke hier Tipps und Rezepte rund um eine ausgewogene Ernährung.',style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0,
          color: Colors.white,
        ),);
    } else if (newresult != 0.0 && newresult <= 18.5) {
      return
        Text(
          'Dein BMI liegt im Bereich des Untergewichts. Versuch ein paar Kilo zuzunehmen, um langfristig gesund und leistungsfähig zu bleiben',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            letterSpacing: 2.0,
            color: Colors.white,
          ),);
    }else
      return Text('');



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
        db.data()!['bmi wert']== null ? db_bmiwert = '0.0' : db_bmiwert = db.data()!['bmi wert'] ,
        db.data()!['Aktivitaet']== null ? db_Aktivitaet = '--' : db_Aktivitaet = db.data()!['Aktivitaet'],
        db.data()!['groesse in Cm']== null ? db_groesse = '0.0' : db_groesse = db.data()!['groesse in Cm'] ,
        db.data()!['alter']== null ? db_alter = '0.0' : db_alter = db.data()!['alter'] ,
        db.data()!['geschlecht']== null ? db_geschlecht = '--' : db_geschlecht = db.data()!['geschlecht'] ,
        db.data()!['ziel']== null ? db_ziel = '--' : db_ziel = db.data()!['ziel'] ,
        db.data()!['gewicht in Kg']== null ? db_gewicht = '0.0' : db_gewicht = db.data()!['gewicht in Kg'] ,
      ];
    });





    setState(() {

    });
    
  }


  Update(BuildContext context) {
    DatabaseManager().updateUserList(
        groesseController.text,
        gewichtController.text,
        alterController.text,
        bmiwert!,
        geschlecht!,
        ziell!,
        Aktivitaet!,
        kalorie!,
        zielerreichen!,
        fett!,
        carbs!,
        protein!,
        wassermenge!,
        ziel,
        userID
    );
    groesseController.clear();
    gewichtController.clear();
    alterController.clear();
  }






}




