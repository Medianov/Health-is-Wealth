import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../service/auth.dart';


class Signup extends StatefulWidget {
  @override
  _Signup createState() => _Signup();
}

class _Signup extends State<Signup> {
  TextEditingController emailController =  TextEditingController();
  TextEditingController passwordController =  TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),

            onPressed: () => Navigator.pop(context),
          ),
        ],
        title: Text(
          'Health is Wealth',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _key,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Login.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              )
          ),

          child: ListView(
              children: [

                Padding(
                  padding: const EdgeInsets.all(12.0),

                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                        EdgeInsets.all(25.0),
                        child: Text(
                          'Welcome to Your Healthy Life',
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Colors.black,
                              ),
                            ],
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Dieses Field kann nicht leer sein.';
                            } else if (!emailController.text.contains("@") || !emailController.text.contains(".")){
                              return 'E-mail muss in folgendes Form sein: username@---.---';
                            }
                            return null;
                          },
                          controller: emailController,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.deepPurple, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              labelText: 'E-mail',
                              labelStyle:
                              TextStyle(fontSize: 19.0, color: Colors.white),
                              hintText: 'E-Mail-Adresse wie z.B. (name@gmail.de)',
                              hintStyle: TextStyle(color: Colors.white),
                              filled: true),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        //padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Dieses Field kann nicht leer sein.';
                            } else
                              return null;
                          },
                          controller: passwordController,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.deepPurple, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              labelText: 'Passwort',
                              labelStyle:
                              TextStyle(fontSize: 19.0, color: Colors.white),
                              hintText: 'Passwort eingeben',
                              hintStyle: TextStyle(color: Colors.white),
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        height: 50,

                      ),
                      Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextButton(
                          onPressed: () {
                            final String email = emailController.text.trim();
                            final String password = passwordController.text.trim();


                            if(email.isEmpty || !emailController.text.contains("@") || !emailController.text.contains(".")){
                              print("Falsche Formel oder Field ist leer");
                            } else {
                              if(password.isEmpty){
                                print("Field ist leer");
                              } else {
                                context.read<AuthService>().signUp(
                                  email,
                                  password,

                                );

                              }
                              Navigator.pop(context);
                              AlertButton(context);

                            }
                            if (_key.currentState!.validate()) {
                            }

                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
  AlertButton(context) {

    var alertStyle = AlertStyle(
        animationType: AnimationType.fromBottom,
        isCloseButton: false,
        isOverlayTapDismiss: true,
        descStyle: TextStyle(fontWeight: FontWeight.bold),
        animationDuration: Duration(seconds: 4),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: BorderSide(
            color: Colors.deepPurple,
          ),
        ),
        titleStyle: TextStyle(
          color: Colors.red,
        ),
        constraints: BoxConstraints.expand(width: 50),

        overlayColor: Color(0x55000000),
        alertElevation: 0,
        alertAlignment: Alignment.center);


    Alert(
      context: context,
      style: alertStyle,
      type: AlertType.warning,
      title: "Hinweis",
      desc: "Beachten Sie, dass das Deaktivieren von Berechtigungen und "
          "Hintergrundaktualisierung hervorrufen kann,"
          " dass die App nicht mehr richtig funktionieren",
      buttons: [],
    ).show();
  }
}