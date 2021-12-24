import 'package:flutter/material.dart';

class essenzunahme1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Zunahme Rezept',
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
                    image: AssetImage('assets/1.png'),
                    height: 160,


                    fit: BoxFit.cover,
                  ),

                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [

                            Text('Eiweissbrot-Sandwich mit Raeuchertofu, Avocado & Sprossen',

                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height:10,
                            ),
                            Text('Zutaten:',


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
                            Text('1 EL Sonnenblumenoel',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text('8 Scheibe(n) Eiweissbrot herzhaft',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text('0.5 Gurke',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text('1 Tomate',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text('1 Zitrone',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text('2 Avocados',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text('Salz',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),

                            Text('Pfeffer',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text('100 g Sprossen (z.B. Alfalfa-Sprossen)',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text('2 EL vegane Mayonnaise',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height:10,
                            ),
                            Text('Zubereitung:',

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
                            Text('1. Den Raeuchertofu in 0,5 cm dicke Streifen schneiden und in einer beschichteten Pfanne mit oel knusprig braun braten.'
                                ' Tofu beiseite legen und das Eiweissbrot in der Pfanne von beiden Seiten kurz anroesten.',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height:5,
                            ),
                            Text('2. Gurke und Tomate waschen, den Strunk der Tomate entfernen und beides in feine Scheiben schneiden. '
                                'Die Zitrone halbieren und den Saft auspressen. Die Avocados halbieren, den Kern entfernen und das Fruchtfleisch aus der ',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height:5,
                            ),
                            Text('3. Avocado und Zitronensaft mit einem Puerierstab zu einer feinen Creme puerieren und mit Salz und Pfeffer abschmecken.',

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height:5,
                            ),
                            Text('4. Die Haelfte der Brotscheiben mit der Avocadocreme bestreichen und mit Raeuchertofu, Tomate, Gurke und Sprossen belegen. Die restlichen Brotscheiben duenn mit veganer Mayonnaise bestreichen und damit das Sandwich zuklappen. Sandwich diagonal halbieren.',

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

class sportabnahme1 extends StatelessWidget {

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
                          Text('Auch wenn sich Nordic Walking mittlerweile einen festen Platz in der Hitliste der Deutschen erobern konnte, so sieht es doch immer wieder etwas merkwürdig aus, wenn sich erwachsene Personen an einem heißen Sommertag mit Stöcken bewaffnet ihren Weg über Asphalt in der Stadt oder einem Waldboden bahnen. Doch unabhängig von der Optik ist Nordic Walking eine großartige Sportart für Einsteiger. Der Stoffwechsel, das Herz und der Kreislauf werden durch die Aktivität des gesamten Körpers so richtig in Schwung gebracht und die Kalorien schmelzen vor sich hin. Durch die fließenden Bewegungen werden die Gelenke geschont. Außerdem stärkt Nordic Walking den Rücken, macht fit und kräftigt Arme und Schultern. Kurzum: Nordic Walking ist ein perfektes Workout für den gesamten Kör-per und dazu noch ideal geeignet, um schnelle Abnehmerfolge zu erzielen.',

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
                          Text('Radfahren ist nicht nur schonend für die Gelenke, sondern in Kombination mit Aktivität an der frischen Luft auch ein Kraft-Elixier für die Seele.'
                              ' Zugleich ist Radfahren aber auch eine sehr effektive Option, um den Pfunden auf der Waage zu Leibe zu rücken. '
                              'Eine Stunde auf dem Drahtesel verbrennt zwischen 300 und 400 Kalorien.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Spielt das Wetter einmal nicht mit und regnet es aus Kübeln, just, '
                              'wenn man sich auf den Sattel schwingen wollte, dann lässt sich das Radfahren auch ins Trockene nach Innen verlegen. '
                              'Viele Fitnessstudios bieten Spinning an; im Grunde ist dies wie Radfahren, nur eben Indoor. '
                              'Spinning ist im Vergleich zu gemütlichem Radfahren eher eine schweißtreibende Angelegenheit. '
                              'In der Folge leert der Kör-per – ähnlich wie bei zügigem Joggen – zunächst die Kohlenhydratspeicher, ehe er sich an den Fettreserven bedient',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Beim Radfahren und dem Spinning gilt, dass die richtige Sitzposition sehr wichtig ist, damit es wirklich bei einer gelenkschonenden Sportart bleibt. '
                              'Einfache Regel für das Einstellen des Sattels: Beim Treten sollten die Beine niemals voll durchgestreckt sein.'
                              'Anfänger starten beim Training draußen am besten mit flachen Strecken und einer moderaten Geschwindigkeit – '
                              'beim Spinning Indoor entsprechend mit einem niedrigen Widerstand.'
                              ' Nach und nach lässt sich die Herausforderung an den Körper dann steigern.',

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
                          Text('Vor allem, wenn Sie ein paar Kilo mehr auf den Hüften haben, ist Schwimmen als Sportart ideal für Sie geeignet. '
                              'Dieser Sport ist nicht nur gelenkschonend, sondern macht Spaß und lässt die Pfunde dahinschmelzen. '
                              'Schwimmen ist gewissermaßen ein Ganzkörper-Workout. Sie trainieren beim Schwimmen sämtliche wichtigen Muskelgruppen und '
                              'spüren bei der Anstrengung lediglich ein Sechstel Ihres Körpergewichts –'
                              ' wenn Sie also beispielsweise 120 Kilogramm auf die Waage bringen, merken Sie im Wasser nur 20 Kilogramm davon.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Als Einsteiger starten Sie am besten mit Brustschwimmen in gemäßigtem Tempo. '
                              'Nach und nach und mit steigendem Fitnesslevel können Sie dann auch andere Stile, wie etwa Kraulen oder Rückenschwimmen ausprobieren. '
                              'Sie werden feststellen, dass die eine oder andere Disziplin durchaus fordernd ist und es tatsächlich möglich ist, auch im Wasser zu schwitzen.'
                              'In einigen Schwimmbädern werden mittlerweile spezielle Gymnastik-Kurse unter Wasser angeboten, mit denen sich gezielt verschiedene Problemzonen '
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
                          Text('Aktiv sein kann auch Spaß machen. Das glauben Sie nicht? Sollte dem so sein, dann haben Sie wahrscheinlich bisher noch nicht lateinamerikanische Tänze, '
                              'Zumba oder auch Aerobic probiert. Bei diesen Sportarten purzeln nicht nur die Pfunde, sondern das Stimmungsbarometer steigt. '
                              'Schlechtes Wetter gibt es fürs Tanzen in einer Tanzschule nicht.'
                              'Mit tänzerischen Sportarten können Sie Ihr Gleichgewicht und die Koordination schulen und gleichzeitig die Fettverbrennung ankurbeln.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Auch für Aerobic im Fitnessstudio gilt die Ausrede schlechtes Wetter nicht.'
                              'Die Bewegung mit Gleichgesinnten macht nicht nur Freude, es lassen sich auch neue Kontakte knüpfen .',

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
                          Text('Für Anfänger sind 2-3 Trainingseinheiten/Woche am sinnvollsten. Fortgeschrittene Sportler trainieren 3-5 mal pro Woche.'
                              'Fitnesssport ist nicht nur etwas für Gesunde. '
                              'Denn in vielen Fällen trägt moderater Sport zur Besserung von Krankheiten bei.',
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
