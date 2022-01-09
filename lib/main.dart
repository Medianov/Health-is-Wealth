import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screens/sportart.dart';
import 'service/update_functions+sharedpreferences.dart';
import 'screens/home.dart';
import 'package:untitled/authentication_screens/login.dart';
import 'screens/essen.dart';
import 'service/auth.dart';




void call_updatesteps ()async{

Sportart().createState().initPlatformState();
}





void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await AndroidAlarmManager.initialize();


  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  AndroidAlarmManager.periodic(const Duration(seconds: 1),
    2,
    call_updatesteps,
    wakeup: true,
    startAt: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour, DateTime.now().minute,1),
    rescheduleOnReboot: true,
    exact: true,

  );
 WidgetsFlutterBinding.ensureInitialized();
  AndroidAlarmManager.periodic(const Duration(days: 1),
    1,
    resetsteps,
    wakeup: true,
    startAt: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 23, 59),
    rescheduleOnReboot: true,
    exact: true,
  );
  WidgetsFlutterBinding.ensureInitialized();
  AndroidAlarmManager.periodic(const Duration(days: 1),
    3,
    cache_schritte_leeren,
    wakeup: true,
    startAt: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 23, 59),
    rescheduleOnReboot: true,
    exact: true,
  );






}



class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService?>(
          create: (_) => AuthService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChanges, initialData: null,
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner:false,
        home: AuthWrapper(),
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    final user = context.watch<User?>();

    if(user != null){
      return Main();

    }
    return Login();
  }


}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final screens=[


    Home(),
    Sportart(),
    Essen(),

  ];
  int index =0;

  @override
  Widget build(BuildContext context) {
    final items =<Widget>[
      Icon(Icons.calculate,size:30),
      Icon(Icons.fitness_center,size:30),
      Icon(Icons.food_bank_outlined,size:30),
    ];
    return Scaffold(
      extendBody: true,

      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color:Colors.white)
        ),
        child: CurvedNavigationBar(
          key : navigationKey,
          color:Colors.deepPurple,
          buttonBackgroundColor: Colors.deepPurple,
          items:items,
          index:index,
          height:60,
          onTap :(index) => setState(()=>this.index=index),
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 90),
        ),
      ),
    );
  }
}




