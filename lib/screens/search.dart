import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:csv/csv.dart';
import 'dart:core';

class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  TextEditingController controller =  TextEditingController();
  String filter = '';
  List<List<dynamic>> _data = [];

  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/Lebensmitteltabelle.csv");
    List<List<dynamic>> _listData = CsvToListConverter().convert(_rawData);
    setState(() {
      _data = _listData;
    });
  }
  @override
  void initState() {
    super.initState();
    _loadCSV();
    controller.addListener(() {
      setState(() {
        filter = controller.text;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          Flexible(


            child: TextField(
              controller: controller,
              autofocus: false,
              decoration: InputDecoration(
                labelText: 'Search Something',
                filled: true,
                fillColor: Colors.white,
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),

          ),
          Icon(Icons.search),



        ],




      ),
      body: Container(
        decoration: BoxDecoration(

            image: DecorationImage(
              image: AssetImage('assets/Lebensmitteltabelle.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            )
        ),
        child: Column(
          children: [
            Table(
              columnWidths: {
                0: FixedColumnWidth(190.0),

              },
              border: TableBorder.all(
                color: Colors.grey,
                width: 0.5,


              ),
              children: [
                TableRow(
                    children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:[

                    Text('Lebensmittel/100g',
                      style: TextStyle(
                        height:1.5,

                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                        color: Colors.orange.shade700,
                      ),
                    ),
                  ]),
                  Column(children:[

                    Text('P',

                      style: TextStyle(
                        height:1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                        color: Colors.orange.shade700,
                      ),
                    ),
                  ]),
                  Column(children:[

                    Text('F',
                      style: TextStyle(
                        height:1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                        color: Colors.orange.shade700,
                      ),
                    ),
                  ]),
                  Column(children:[

                    Text('KH',
                      style: TextStyle(
                        height:1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                        color: Colors.orange.shade700,
                      ),
                    ),
                  ]),
                  Column(children:[

                    Text('Kcal',
                      style: TextStyle(
                        height:1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                        color: Colors.orange.shade700,
                      ),
                    ),
                  ]),
                ]),

              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _data.length,
                itemBuilder: (ctx, index) {
                  return _data[index].toString().toLowerCase().contains(filter.toLowerCase())

                    ? Table(
                    columnWidths: {
                      0: FixedColumnWidth(190.0),

                    },
                    border: TableBorder.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    children: [
                      TableRow( children: [
                        Column(

                            crossAxisAlignment: CrossAxisAlignment.start,

                            children:[


                          Text(_data[index][0].toString(),
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,

                              color: Colors.white,
                            ),
                          ),
                        ]),
                        Column(children:[

                          Text(_data[index][1],
                            style: TextStyle(
                              fontSize: 18.0,
                              letterSpacing: 0.5,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                        Column(children:[

                          Text(_data[index][2].toString(),
                            style: TextStyle(
                              fontSize: 18.0,
                              letterSpacing: 0.5,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                        Column(children:[

                          Text(_data[index][3].toString(),
                            style: TextStyle(
                              fontSize: 18.0,

                              letterSpacing: 0.5,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                        Column(children:[

                          Text(_data[index][4].toString(),
                            style: TextStyle(
                              fontSize: 18.0,

                              letterSpacing: 0.5,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ]),

                    ],
                  )
                  : SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
