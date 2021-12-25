import 'package:flutter/material.dart';



class sportabnahme1 extends StatelessWidget {
  sportabnahme1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Abnahme',
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
              image: AssetImage('assets/Sportart.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/sportabnahme1.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Joggen',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie oft: ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Einmal pro Tag.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie viel Kalorien werden verbraucht :',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text(' 500 Kalorien pro Stunde.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Fazit:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Joggen ist ein echter Klassiker in Sachen Bewegung. '
                              'Wenn die Sportschuhe geschnuert sind, steht einer Runde durch den Wald oder um den Block nichts im Wege. '
                              'Nicht weniger als 500 Kalorien verbrennen Sie im Durchschnitt bei einer Stunde auf schnellen Schusters Rappen. '
                              'Hetzen muessen Sie sich dabei uebrigens nicht und auch keine neuen Weltrekorde brechen. '
                              'Denn: Durch langsames Joggen aktivieren Sie Ihren Fettstoffwechsel mehr als bei einem rasanten Lauf. '
                              'Warum dies so ist? Unser Koerper greift bevorzugt bei einem moderaten Lauftempo auf seine Fettspeicher als Energiereserven zurueck. '
                              'Wenn wir es hingegen zu schnell angehen, leert er zunaechst die Kohlenhydratspeicher, um neue Energie zu erhalten.'
                              'Er verbrennt also als erstes das, was ihm kurz zuvor in Form von Nahrung verabreicht wurde.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),




                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class sportabnahme2 extends StatelessWidget {
  sportabnahme2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Abnahme',
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
              image: AssetImage('assets/Sportart.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/sportabnahme2.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Nordic Walking',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie oft: ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Einmal pro Tag.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie viel Kalorien werden verbraucht :',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text(' 350 Kalorien pro Stunde.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Fazit:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Auch wenn sich Nordic Walking mittlerweile einen festen Platz in der Hitliste der Deutschen erobern konnte, '
                              'so sieht es doch immer wieder etwas merkwuerdig aus, wenn sich erwachsene Personen an einem heissen Sommertag mit Stoecken bewaffnet ihren Weg ueber Asphalt in der Stadt oder einem Waldboden bahnen. '
                              'Doch unabhaengig von der Optik ist Nordic Walking eine grossartige Sportart fuer Einsteiger. Der Stoffwechsel, das Herz und der Kreislauf werden durch die Aktivitaet des gesamten Koerpers so richtig in Schwung gebracht und die Kalorien schmelzen vor sich hin.'
                              ' Durch die fliessenden Bewegungen werden die Gelenke geschont. Ausserdem staerkt Nordic Walking den Ruecken, macht fit und kraeftigt Arme und Schultern. '
                              'Kurzum: Nordic Walking ist ein perfektes Workout fuer den gesamten Koerper und dazu noch ideal geeignet, um schnelle Abnehmerfolge zu erzielen.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),




                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class sportabnahme3 extends StatelessWidget {
  sportabnahme3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Abnahme',
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
              image: AssetImage('assets/Sportart.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/sportabnahme3.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Radfahren oder Spinning',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie oft: ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Einmal pro Tag.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie viel Kalorien werden verbraucht :',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text(' Ca. 400 Kalorien pro Stunde.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Fazit:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Radfahren ist nicht nur schonend fuer die Gelenke, sondern in Kombination mit Aktivitaet an der frischen Luft auch ein Kraft-Elixier fuer die Seele.'
                              ' Zugleich ist Radfahren aber auch eine sehr effektive Option, um den Pfunden auf der Waage zu Leibe zu ruecken. '
                              'Eine Stunde auf dem Drahtesel verbrennt zwischen 300 und 400 Kalorien.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Spielt das Wetter einmal nicht mit und regnet es aus Kuebeln, just, '
                              'wenn man sich auf den Sattel schwingen wollte, dann laesst sich das Radfahren auch ins Trockene nach Innen verlegen. '
                              'Viele Fitnessstudios bieten Spinning an; im Grunde ist dies wie Radfahren, nur eben Indoor. '
                              'Spinning ist im Vergleich zu gemuetlichem Radfahren eher eine schweisstreibende Angelegenheit. '
                              'In der Folge leert der Koerper  aehnlich wie bei zuegigem Joggen  zunaechst die Kohlenhydratspeicher, ehe er sich an den Fettreserven bedient',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Beim Radfahren und dem Spinning gilt, dass die richtige Sitzposition sehr wichtig ist, damit es wirklich bei einer gelenkschonenden Sportart bleibt. '
                              'Einfache Regel fuer das Einstellen des Sattels: Beim Treten sollten die Beine niemals voll durchgestreckt sein.'
                              'Anfaenger starten beim Training draussen am besten mit flachen Strecken und einer moderaten Geschwindigkeit '
                              'beim Spinning Indoor entsprechend mit einem niedrigen Widerstand.'
                              ' Nach und nach laesst sich die Herausforderung an den Koerper dann steigern.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),




                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class sportabnahme4 extends StatelessWidget {
  sportabnahme4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Abnahme',
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
              image: AssetImage('assets/Sportart.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/sportabnahme4.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Schwimmen',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie oft: ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Einmal pro Tag.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie viel Kalorien werden verbraucht :',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text(' Ca. 300-500 Kalorien pro Stunde',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Fazit:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Vor allem, wenn Sie ein paar Kilo mehr auf den Hueften haben, ist Schwimmen als Sportart ideal fuer Sie geeignet. '
                              'Dieser Sport ist nicht nur gelenkschonend, sondern macht Spass und laesst die Pfunde dahinschmelzen. '
                              'Schwimmen ist gewissermassen ein Ganzkoerper-Workout. Sie trainieren beim Schwimmen saemtliche wichtigen Muskelgruppen und '
                              'spueren bei der Anstrengung lediglich ein Sechstel Ihres Koerpergewichts'
                              ' wenn Sie also beispielsweise 120 Kilogramm auf die Waage bringen, merken Sie im Wasser nur 20 Kilogramm davon.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Als Einsteiger starten Sie am besten mit Brustschwimmen in gemaessigtem Tempo. '
                              'Nach und nach und mit steigendem Fitnesslevel koennen Sie dann auch andere Stile, wie etwa Kraulen oder Rueckenschwimmen ausprobieren. '
                              'Sie werden feststellen, dass die eine oder andere Disziplin durchaus fordernd ist und es tatsaechlich moeglich ist, auch im Wasser zu schwitzen.'
                              'In einigen Schwimmbaedern werden mittlerweile spezielle Gymnastik-Kurse unter Wasser angeboten, mit denen sich gezielt verschiedene Problemzonen '
                              '(Stichwort: Bauch-Beine-Po) straffen lassen.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),




                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class sportabnahme5 extends StatelessWidget {
  sportabnahme5({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Abnahme',
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
              image: AssetImage('assets/Sportart.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/sportabnahme5.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Aerobic, Tanzen, Zumba',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie oft: ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Einmal pro Tag.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie viel Kalorien werden verbraucht :',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ca. 300- 500 Kalorien pro Stunde.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Fazit:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Aktiv sein kann auch Spass machen. Das glauben Sie nicht? Sollte dem so sein, dann haben Sie wahrscheinlich bisher noch nicht lateinamerikanische Taenze, '
                              'Zumba oder auch Aerobic probiert. Bei diesen Sportarten purzeln nicht nur die Pfunde, sondern das Stimmungsbarometer steigt. '
                              'Schlechtes Wetter gibt es fuers Tanzen in einer Tanzschule nicht.'
                              'Mit taenzerischen Sportarten koennen Sie Ihr Gleichgewicht und die Koordination schulen und gleichzeitig die Fettverbrennung ankurbeln.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Auch fuer Aerobic im Fitnessstudio gilt die Ausrede schlechtes Wetter nicht.'
                              'Die Bewegung mit Gleichgesinnten macht nicht nur Freude, es lassen sich auch neue Kontakte knuepfen .',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),




                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class sportabnahme6 extends StatelessWidget {
  sportabnahme6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Abnahme',
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
              image: AssetImage('assets/Sportart.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/sportabnahme6.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('In der Fitness Sport treiben',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie oft: ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('2-3 pro Woche.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie viel Kalorien werden verbraucht :',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ca. 500 Kalorien pro Stunde.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Fazit:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Fuer Anfaenger sind 2-3 Trainingseinheiten/Woche am sinnvollsten. Fortgeschrittene Sportler trainieren 3-5 mal pro Woche.'
                              'Fitnesssport ist nicht nur etwas fuer Gesunde. '
                              'Denn in vielen Faellen traegt moderater Sport zur Besserung von Krankheiten bei.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),




                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}