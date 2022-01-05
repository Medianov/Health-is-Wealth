import 'package:flutter/material.dart';

class sportabnahme extends StatefulWidget {
  const sportabnahme({Key? key}) : super(key: key);

  @override
  _sportabnahmeState createState() => _sportabnahmeState();
}

class _sportabnahmeState extends State<sportabnahme> {
  @override
  Widget build(BuildContext context) {
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
                    image: AssetImage('assets/sportabnahme1.png'),
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
                      'Joggen',
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
                    MaterialPageRoute(builder: (context) => sportabnahme1()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportabnahme2.png'),
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
                      'Nordic Walking',
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
                    MaterialPageRoute(builder: (context) => sportabnahme2()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportabnahme3.png'),
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
                      'Radfahren oder Spinning',
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
                    MaterialPageRoute(builder: (context) => sportabnahme3()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportabnahme4.png'),
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
                      'Schwimmen',
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
                    MaterialPageRoute(builder: (context) => sportabnahme4()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportabnahme5.png'),
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
                      'Aerobic, Tanzen, Zumba',
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
                    MaterialPageRoute(builder: (context) => sportabnahme5()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportabnahme6.png'),
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
                      'In der Fitness Sport treiben',
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
                    MaterialPageRoute(builder: (context) => sportabnahme6()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
        ),
      ],
    );
  }
}


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



class sportzunahme extends StatefulWidget {
  const sportzunahme({Key? key}) : super(key: key);

  @override
  _sportzunahmeState createState() => _sportzunahmeState();
}

class _sportzunahmeState extends State<sportzunahme> {
  @override
  Widget build(BuildContext context) {
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
                    image: AssetImage('assets/sportzunahme1.jfif'),
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
                      'Kniebeuge',
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
                    MaterialPageRoute(builder: (context) => sportzunahme1()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportzunahme2.jpg'),
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
                      'Klimmzuege',
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
                    MaterialPageRoute(builder: (context) => sportzunahme2()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportzunahme3.jpg'),
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
                      'Kreuzheben',
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
                    MaterialPageRoute(builder: (context) => sportzunahme3()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportzunahme4.jpg'),
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
                      'Bankdruecken',
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
                    MaterialPageRoute(builder: (context) => sportzunahme4()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportzunahme5.jfif'),
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
                      'Schulterdruecken',
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
                    MaterialPageRoute(builder: (context) => sportzunahme5()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
        ),
      ],
    );
  }
}


class sportzunahme1 extends StatelessWidget {
  sportzunahme1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Zunahme',
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
                  image: AssetImage('assets/sportzunahme1.jfif'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Kniebeuge',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Diese Muskeln werden primaer mit Squats angesprochen:',


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
                          Text('Vierkoepfiger Oberschenkelmuskel (musculus quadrizeps femoris)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:5,
                          ),

                          Text('Beinbizeps (musculus biceps femoris)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:5,
                          ),

                          Text('Grosser Gesaessmuskel (musculus gluteus maximus)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('Daneben sind folgende Muskeln unterstuetzend aktiv:',

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
                          Text('Rueckenstrecker (musculus erector spinae)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Dreikoepfiger Adduktor (musculus adductor)',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                          Text('Gerader Bauchmuskel (Musculus rectus abdominis)',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Bei der Ausfuehrung kommt es auf ein paar Feinheiten an:',

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
                          Text('1. Die Fuesse sind mindestens schulterbreit aufgestellt, die Belastung ist auf dem kompletten Fuss, die Knie sind leicht nach aussen rotiert',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Die Langhantel liegt auf dem Trapezius, also eher auf den Schultern als im Nacken',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Greife die Hantel so, dass die Handflaechen nach vorne zeigen, die Handgelenke sind gerade, die Ellenbogen unter der Hantel',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('4. Spanne den Bauch an, ziehe die Schulterblaetter nach hinten unten, strecke die Brust raus',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('5. Atme tief ein, baue einen Druck im Bauchinnenraum auf, halte die Luft an und beginne, in die Knie zu gehen',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('6.	Senke dich kontrolliert und langsam ab, die Knie zeigen dabei immer leicht nach aussen',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('7.	Unten angekommen kurz halten und kontrolliert wieder aufrichten, dabei vom kompletten Fuss abdruecken und aus dem Mund kraeftig ausatmen',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                          Text('Geschaetzte Verbrannte Energie fuer eine 70 kg Person pro Stunde: 588 Kalorien',
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

class sportzunahme2 extends StatelessWidget {
  sportzunahme2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Zunahme',
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
                  image: AssetImage('assets/sportzunahme2.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Klimmzuege',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Zielmuskeln:',


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
                          Text('Breiter Rueckenmuskel - musculus latissimus dorsi',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:5,
                          ),

                          Text('Untere Fasern des Kapuzenmuskel - musculus trapezius pars ascendens',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:5,
                          ),

                          Text('Grosser und kleiner Rautenmuskel - musculus rhomboideus minor et major',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                          Text('Grosser Rundmuskel - musculus teres major',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Unterstuetzende Muskulatur:',

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
                          Text('Rueckenstrecker (musculus erector spinae)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Dreikoepfiger Adduktor (musculus adductor)',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                          Text('Bizeps - Musculus biceps brachii',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                          Text('Armbeuger - Musculus brachialis',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                          Text('Oberarmspeichenmuskel - musculus brachioradialis',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Diese 5 Dinge solltest du bei der Ausfuehrung beachten:',

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
                          Text('1. Griff: Greife immer auch mit den Daumen um die Stange, das gibt dir mehr Halt und Sicherheit.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Kopfhaltung: Bring das Kinn in der Endposition ueber die Stange - das gibt deinem Latissimus den ultimativen Kraft-Kick.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Rumpfspannung: Halte den ganzen Oberkoerper durchgehend unter Spannung. Das sorgt fuer Stabilitaet in den Auf- und-ab-Bewegungen und trainiert darueber hinaus dein Sixpack mit.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('4. Blick fokussieren: Schau in der Ausgangsposition zur Stange. Das gibt die Zugrichtung vor und motiviert dich - das Motto lautet: Da will ich hin, und zwar jetzt gleich!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('5. Knie beugen: Fuehre Klimmzuege immer mit gebeugten, ueberkreuzten Knien aus. Das sorgt fuer Stabilitaet und verhindert, dass du voellig unkontrolliert nach vorn und hinten pendelst',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:5,
                          ),

                          Text('Geschaetzte Verbrannte Energie fuer eine 70 kg Person pro Stunde: 543 Kalorien',
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

class sportzunahme3 extends StatelessWidget {
  sportzunahme3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Zunahme',
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
                  image: AssetImage('assets/sportzunahme3.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Kreuzheben',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Du trainierst mit Kreuzheben primaer folgende Muskelpartien:',


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
                          Text('Unterer Ruecken (musculus erector spinae)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:5,
                          ),

                          Text('Gesaess (musculus gluteus maximus)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:5,
                          ),

                          Text('Oberschenkel (musculus quadriceps femoris und adductor magnus)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('Sekundaer beansprucht sind ausserdem:',

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
                          Text('Waden (musculus triceps surae)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Nacken (musculus levator scapulae)',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                          Text('Bauch (musculus rectus abdominis)',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                          Text('Schultern (musculus trapezius und teres major)',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Bei der Ausfuehrung kommt es auf ein paar Feinheiten an:',

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
                          Text('Kreuzheben ist eine hueftdominante Uebung. '
                              'Das heisst, die Kraft kommt weniger aus den Beinen '
                              'als bei Kniebeugen und staerker aus der Huefte.Die Grundbewegung beim Kreuzheben ist ganz simpel: '
                              'Du schiebst dein Becken nach vorne und hinten. '
                              'Dabei kommt es natuerlich auf ein paar Feinheiten an:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. Du stehst schulterbreit vor der Langhantel, die Knie sind leicht gebeugt. Greife die Langhantel, deine Haende befinden sich rechts und links von deinen Schienbeinen, die Handflaechen zeigen zu dir.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Ziehe die Schulterblaetter nach hinten unten, habe eine stolze Brust.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Einatmen, Spannung in den Bauch bringen, Ruecken gerade halten.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('4. Bringe die Langhantel auf Huefthoehe, indem du dein Becken nach vorne schiebst. Atme aus.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('5.	Das Absenken erfolgt, indem du dein Becken wieder nach hinten in die Ausgangsposition bringst. Die Langhantel bleibt nah an deinen Beinen. Deine Knie sind immer leicht gebeugt.',
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

class sportzunahme4 extends StatelessWidget {
  sportzunahme4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Zunahme',
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
                  image: AssetImage('assets/sportzunahme4.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Bankdruecken',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('Bei der Ausfuehrung kommt es auf ein paar Feinheiten an:',

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
                          Text('1. Lege dich auf eine Flachbank. Die Schultern werden beim Bankdruecken zurueckgezogen und du kommst gleichzeitig '
                              'in ein leichtes Hohlkreuz.Die verlaengerte Linie zwischen Schultern und Beginn der Lendenwirbelsaeule sollte dabei auf '
                              'der Bank aufliegen. Unter dem unteren Rueckenstrecker sollte noch ein Arm durchgestreckt werden koennen. Der Kopf liegt auf der Bank flach auf, '
                              'die Augen fixieren die Stange. Die Beine befinden sich dabei im 90 Grad Winkel fest aufgestellt auf dem Boden.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Fuer die richtige Griffstellung beim Bankdruecken umfasse die Stange in etwa schulterweit. '
                              'Die Handgelenke werden gerade gehalten und die Langhantelstange mit einem sehr festen Griff umschlossen.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Nun folgt die Einleitung der Bewegung. Atme dafuer tief ein '
                              'und spanne gleichzeitig den Ruecken, Po und die fixierten '
                              'Schulterblaetter an. Durch das tiefe Einatmen stabilisierst '
                              'du die gesamte Koerpermitte und nimmst den Druck von deinen '
                              'Bandscheiben und der Wirbelsaeule.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('4.	Die Stange wird nun langsam und kontrolliert auf der '
                              'Brust abgesetzt. Die Brust bleibt dabei permanent unter Spannung.'
                              ' Der kurze Zwischenstopp auf der Brust sollte nicht dazu genutzt '
                              'werden, die Spannung zu verlieren. Als Fixpunkt fuer das Absetzen '
                              'dient hier das untere Ende des Brustbeins (unter den Brustwarzen).',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('5.	Fuer die positive Bewegung wird die Stange anschliessend '
                              'explosiv nach oben gefuehrt. Wichtig ist, gleichzeitig die Schulterblaetter zu fixieren und die gesamte Koerpermitte fest und stabil zu halten. Die Kraft wird durch das Ausatmen aus '
                              'dem Bauchraum und den stabilen Stand der Fuesse unterstuetzt.'
                            ,style: TextStyle(
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

class sportzunahme5 extends StatelessWidget {
  sportzunahme5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Sport fuer Zunahme',
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
                  image: AssetImage('assets/sportzunahme5.jfif'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Schulterdruecken',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('Bei der Ausfuehrung kommt es auf ein paar Feinheiten an:',

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
                          Text('1. Druecke die Stange auf geradem Weg nach oben. '
                              'Dadurch kannst du die Bewegung effizient durchfuehren (d.h. du kannst mehr Gewicht bewegen),'
                              ' da du nur direkt gegen die Schwerkraft arbeitest. Bei einer schraegen Kurve musst du viel Kraft aufwenden,'
                              ' um das Gewicht zu stabilisieren.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Bei der Aufwaertsbewegung ist dir dein Kopf im Weg. '
                              'Lehne ihn leicht zurueck. Die Stange sollte direkt an '
                              'deiner Nase/deinem Gesicht vorbeigehen.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Auf Stirnhoehe gehst du mit dem Kopf wieder nach vorne.'
                              ' (Durch das Fenster schauen) ist eine gute bildliche Vorstellung '
                              'fuer diesen Teil (Fenster = gebildet aus Armen und Stange).',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('4. Vertikale Bewegung: Die Stange soll moeglichst gerade nach oben gedrueckt werden. '
                              'Lass die Ausfuehrung von der Seite ueberpruefen (oder filme dich)'
                              '.Spanne die Bauchmuskeln  und den Hintern an. '
                              'Schmerzen im unteren Ruecken (durch zu starkes Zuruecklehnen) '
                              'zeigen dir, dass du es noch nicht richtig machst.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('5. Atmung: Zwischen den Wiederholungen solltest du ein- und '
                              'ausatmen. Ansonsten kippst du schnell um! Der richtige Moment '
                              'dafuer  ist, wenn das Gewicht auf deinen Schultern ruht oder '
                              'in der durchgedrueckten Phase (oben).Waehrend der Bewegung brauchst du die Spannung durch das Valsalva Manoever.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('6. Deine Schuhe sollten eine feste Sohle haben (Chucks).'
                              ' Ansonsten riskierst du waehrend der Uebungsausfuehrung einen '
                              'unsicheren Stand und limitierst dein Trainingsgewicht oder '
                              'kompromitierst die Uebungsausfuehrung.',
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



class sportbeibehalten extends StatefulWidget {
  const sportbeibehalten({Key? key}) : super(key: key);

  @override
  _sportbeibehaltenState createState() => _sportbeibehaltenState();
}

class _sportbeibehaltenState extends State<sportbeibehalten> {
  @override
  Widget build(BuildContext context) {
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
                    image: AssetImage('assets/sportbeibehalten1.jpg'),
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
                      'Burpees',
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
                    MaterialPageRoute(builder: (context) => sportbeibehalten1()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportbeibehalten2.jpg'),
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
                      'Crunches',
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
                    MaterialPageRoute(builder: (context) => sportbeibehalten2()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportbeibehalten3.jpg'),
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
                      'Mountain Climber',
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
                    MaterialPageRoute(builder: (context) => sportbeibehalten3()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
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
                    image: AssetImage('assets/sportbeibehalten4.jpg'),
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
                      'Liegestuetze',
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
                    MaterialPageRoute(builder: (context) => sportbeibehalten4()));},
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 5.0, right: 5.0,top : 5.0),
        ),
      ],
    );
  }
}


class sportbeibehalten1 extends StatelessWidget {
  sportbeibehalten1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Gewicht halten Sport',
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
                  image: AssetImage('assets/sportbeibehalten1.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Burpees',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie wird ein Burpee ausgefuehrt?',


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
                          Text('1 Du beugst Deine Beine, setzt die Haende neben die Fuesse und gehst in die Hocke.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('2 Stuetz Dich mit den Haenden ab, '
                              'spring mit beiden Beinen in die Liegestuetzposition und leg dann den Koerper ab.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('3 Aus der Bauchlage drueckst Du Dich mit beiden Armen '
                              'zurueck in die Liegestuetzposition und springst wieder zurueck in die Hocke.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('4 Aus der Hocke fuehrst du nun einen Strecksprung aus und endest in der Ausgangsposition.',

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
                          Text('Burpees werden fast immer schnell hintereinander ausgefuehrt. Klar, sonst waeren sie kein Herz-Kreislauf-Training. '
                              'Immer da, wo komplexe Bewegungsablaeufe schnell unter Zeitdruck und das am besten noch im '
                              'ermuedeten Zustand ausgefuehrt werden, lauert Verletzungsgefahr - das gilt nicht nur fuer Burpees. '
                              'Auch klar. Worauf ist also zu achten, wenn Du sicher trainieren willst?'
                              'Generell ist Deine Koerperspannung das A & O fuer eine sichere Ausfuehrung. Deine Rumpfmuskulatur '
                              'gibt Dir die noetige Stabilitaet, um Deinen Ruecken und damit Deine Wirbelsaeule zu schuetzen. '
                              'Also halte Dich mit aktiver Bauchkraft stabil und stoppe die Uebung lieber, wenn Du merkst, '
                              'dass Dein Ruecken durchhaengt oder Du ins Hohlkreuz geraetst. Besonders bei dem Sprung in die '
                              'Liegestuetzposition solltest Du Dich hierauf konzentrieren.'
                              'Um Deine Knie zu schuetzen, achte darauf, wie Du Deine Beine beugst, wenn es runter in die Hocke '
                              'geht. Die Technik ist im Grunde dieselbe wie im Squat: Setz die Huefte zurueck und achte darauf, '
                              'dass die Knie aussen und ueber den Zehen ausgerichtet bleiben.'
                              'Fuer die Sicherheit Deiner Schultern ist es wichtig, dass Du im Ablauf die Haende nicht zu frueh, '
                              'sondern erst in der Hocke auf dem Boden absetzt. Die Belastung fuer die Schultern wird unnoetig gross, '
                              'wenn Du auf die Haende springst, also Dein gesamtes Koerpergewicht aus dem Flug abfangen willst. '
                              'Achte darauf, dass Du Deine Schultern nie an die Ohren ziehst, sondern die Schulterblaetter tief '
                              'im Ruecken fixiert haeltst, waehrend du die Uebung ausuebst.'
                              'Am besten ist, Du uebst die Bewegung erst mal langsam und steigerst Dich erst dann mit dem Tempo, '
                              'wenn Du den Ablauf sicher beherrschst. Wenn Deine Koerpermittelspannung noch nicht ausreichen sollte, '
                              'Dich bei dem Sprung in die Liegestuetzposition stabil zu halten, kannst Du statt des Sprunges einfach 2 Schritte zurueck machen. '
                              'Auch den Sprung in die Hocke nach vorne kannst Du durch Schritte ersetzen, dann wird es einfacher.',

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

class sportbeibehalten2 extends StatelessWidget {
  sportbeibehalten2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Gewicht halten Sport',
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
                  image: AssetImage('assets/sportbeibehalten2.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Crunches',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie werden Crunches ausgefuehrt?',


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
                          Text('Um den groessten Effekt im Muskelaufbau zu erzielen und kein Verletzungsrisiko einzugehen, '
                              'kommt es bei Crunches wie bei jedem Krafttraining '
                              'auf eine saubere und bewusste Ausfuehrung an. Bei der Uebung liegst Du auf dem Ruecken, deshalb '
                              'schonst Du Deine Wirbelsaeule am besten mit einer Sportmatte. Deine Beine sind angewinkelt, '
                              'die Fuesse flach aufgestellt und stuetzen sich vorwiegend auf die Fersen. Der Abstand Deiner Schenkel, '
                              'Knie und Fuesse ist hueftbreit die Beine duerfen weder nach innen klappen noch zu sehr nach aussen '
                              'gedrueckt werden. Po und unterer Ruecken werden unter Anspannung fest an den Boden gepresst. Deine '
                              'Fingerspitzen beruehren sanft die Schlaefen, sie ueben keinen Druck aus und stuetzen sich auch nicht den '
                              'Nacken. Achte darauf, dass Deine Ellenbogen gerade nach aussen zeigen, sonst arbeitet Deine '
                              'Rueckenmuskulatur satt den Bauchmuskeln. Dein Kopf behaelt seine natuerliche Position, das Kinn wird '
                              'also nicht krampfhaft nach unten in Richtung Brust gepresst.Hilfreich fuer die richtige Kopfhaltung '
                              'ist Deine Blickrichtung: Deine Augen sollten schraeg nach oben schauen. Wenn Du mit der Ausfuehrung '
                              'beginnst, bewegen sich Schultern und Brust in leichter Kruemmung nach oben. Der leichten Biegung der'
                              ' oberen Wirbelsaeule beim Hochgehen verdanken die Crunches zwar ihren Namen, trotzdem sollte die '
                              'Bewegungsrichtung gedanklich immer nach oben fliessen, nicht eingerollt nach vorn zu den Schenkeln.'
                              ' Wie bei jeder Kraftuebung erfolgt das Ausatmen im Moment der Belastung, also waehrend des Anhebens.'
                              ' Waehrend sich Dein Oberkoerper zurueck zum Boden senkt, atmest Du wieder ein. '
                              'Achtung: Um die Muskelspannung zu erhalten, '
                              'gehen Brust und Schultern nicht ganz auf den Boden zurueck, sondern schweben knapp darueber.'
                              ' Arme, Nacken und Kopf bleiben immer in der Ausgangshaltung'
                              ', bis die gesamte Wiederholungsanzahl abgeschlossen ist.Anders als bei Sit Ups,'
                              ' bei denen sich Dein kompletter Oberkoerper aufrichtet, '
                              'geht die Bewegung bei Crunches nur 10 bis maximal 30 Zentimeter hoch. Dadurch beanspruchst Du andere Muskeln:'
                              ' Die gerade obere Bauchmuskulatur und der pyramidenfoermige Muskel fuehren die Arbeit aus.'
                              ' Unterstuetzt werden sie durch Deine schraege Bauchmuskulatur.',

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

class sportbeibehalten3 extends StatelessWidget {
  sportbeibehalten3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Gewicht halten Sport',
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
                  image: AssetImage('assets/sportbeibehalten3.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Mountain Climber',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie wird das ausgefuehrt?',


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
                          Text('Fuer den Mountain Climber, auch (Bergsteiger)genannt, '
                              'brauchst Du keine zusaetzlichen Hilfsmittel, sondern nur Deine Trainingsmatte. '
                              'Als Grundhaltung nimmst Du die Liegestuetzposition ein. '
                              'Dabei sind die Arme etwa schulterbreit auseinander und Deine Fuee im hueftweiten Abstand '
                              'aufgestellt. Achte darauf, dass sich die Schultern direkt ueber den Haenden befinden und'
                              ' auch waehrend der Bewegung moeglichst in dieser Position bleiben. Der Ruecken ist in einer '
                              'geraden Position. Nun werden die Knie in einer sprunghaften Bewegung abwechselnd Richtung '
                              'Brustkorb gezogen. Das jeweils hintere Bein bleibt gerade gestreckt. Entscheidend bei der '
                              'Ausfuehrung des Bergsteigers ist, dass Du Deine Korrperspannung durchgehend beibehaeltst. '
                              'Trainiert werden dabei Beinbizeps, Gesaessmuskel, Quadrizeps sowie der gerade Bauchmuskel. '
                              'Einen Nebeneffekt hat der Bergsteiger auf die Rueckenstrecker-Muskulatur, '
                              'die seitlichen Bauchmuskeln sowie den Trizeps.',

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

class sportbeibehalten4 extends StatelessWidget {
  sportbeibehalten4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Gewicht halten Sport',
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
                  image: AssetImage('assets/sportbeibehalten4.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Liegestuetze',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Wie werden Liegestuetze ausgefuehrt?',


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
                          Text('Eigengewichtsuebungen kommen ohne zusaetzliche Gewichte aus. '
                              'Das Muskeltraining und die damit verbundene Kraeftigung der Muskeln und deren Aufbau erfolgt '
                              'also ausschliesslich '
                              'durch die Nutzung des jeweiligen Koerpergewichts des TrainierendenDie Ausgangslage fuer '
                              'Liegestuetze ist die Bauchlage. In dieser werden beide Haende auf den Boden aufgestuetzt.'
                              ' Die Haende sollten dabei etwas weiter als die Schulterbreite des Trainierenden voneinander '
                              'entfernt sein. Durch gleichzeitiges Durchdruecken beider Arme gelangt man in die Ausgangsposition'
                              ' fuer die Liegestuetze. Dabei ruht der Koerper dann auf beiden Haenden sowie den Zehenspitzen.'
                              ' Die Finger beider Haende muessen dabei nach vorne zeigen, waehrend die Daumen nach innen zeigen. '
                              'Der gesamte Koerper muss waehrend der Liegestuetze eine Linie bilden und der Blick nach unten '
                              'gerichtet sein. Das Anspannen der Bauchmuskulatur stuetzt den Koerper waaehrend der Durchfuehrung '
                              'der Uebung und sein Durchhaengen nach unten wird vermieden. Durch Beugen der Arme wird der Koerper '
                              'anschliessend abgesenkt, um anschliessend durch wiederholtes Durchdruecken der Arme'
                              ' wieder angehoben zu werden. Selbst an der hoechsten Stelle duerfen die Arme jedoch nicht ganz '
                              'durchgestreckt sein, sondern muessen eine leichte Beugung beibehalten. Dadurch wird sichergestellt'
                              ', dass die Muskulatur unter staendiger Spannung gehalten wird, was den Trainingseffekt verbessert.'
                              ' Der Bewegungsumfang sollte so gross wie moeglich sein. Das bedeutet, dass die Absenkung so tief'
                              ' wie moeglich erfolgen sollte, da sich dadurch ebenfalls der Trainingseffekt optimieren laesst. '
                              'Sowohl die Bewegung beim Absenken als auch diejenige beim Anheben des Koerpers muss kontrolliert '
                              'und gleichmaessig erfolgen, keinesfalls duerfen Liegestuetze explosiv (also ruckartig) durchgefuehrt '
                              'werdenLiegestuetze zielen vor allem auf das Training des grossen Brustmuskels ab. Dieser wird bei '
                              'der Ausfuehrung jedoch von anderen Muskelpartien unterstuetzt. Vor allem die Schultermuskulatur '
                              'und der Armstrecker (Trizeps) sind in den Bewegungsablauf mit eingebunden und werden daher auch '
                              'mit trainiert. Somit sind Liegestuetze eine sehr gute Moeglichkeit, einen grossen Teil der '
                              'gesamten Oberkoerpermuskulatur mit nur einer Uebung zu trainieren, denn zahlreiche weitere '
                              'Muskeln werden zusaetzlich zur Koerperstabilisierung eingesetzt. Dazu gehoeren der Rueckenstrecker'
                              ', der Gerade Bauchmuskel, der Grosse Gesaessmuskel und der Vordere Saegemuskel sowie der '
                              'Oberschenkelstrecker und der Kleine und Grosse RautenmuskelDa Liegestuetze in der beschriebenen '
                              'Form eine Kraftuebung sind, die nicht jeder gleich gut bewaeltigen kann, gibt es verschiedene '
                              'Varianten, um sie an die persoenliche Leistungsfaehigkeit anzupassen oder die beanspruchten '
                              'Muskelpartien zu variieren.Wer erst mit dem Training beginnt oder noch nicht ueber eine so '
                              'leistungsfaehige Muskulatur verfuegt, kann beispielsweise Wandliegestuetze durchfuehren.'
                              ' Statt auf dem Boden stuetzt man sich dabei im Stehen mit den Haenden an einer Wand ab. '
                              'Der restliche Bewegungsablauf ist der Gleiche. Je weiter die Fuesse dabei von der Wand'
                              ' entfernt sind, desto schwieriger wird die Durchfuehrung der Uebung.',

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
