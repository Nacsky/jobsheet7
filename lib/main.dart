import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Zahwa',
    'Eli',
    'Abdul',
    'Faqih',
    'Evan',
    'Alisha',
  ];
  var listWarna = [
    Colors.lightBlue,
    Colors.purple,
    Colors.teal,
    Colors.yellowAccent,
    Colors.indigo,
    Colors.deepPurple,
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 65),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 178, 221, 238),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(33, 0, 0, 0),
                  spreadRadius: 15,
                  offset: Offset.fromDirection(-5.5, 65.0),
                  blurRadius: 5)
            ]),
        child: Column(
          children: [
            Text(
              'Apa Kabar',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              listNama[index % listNama.length],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: listWarna[index % listWarna.length]),
            )
          ],
        ));
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(MaterialApp(
      title: 'Jobsheet 7',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jobsheet 7 Container Widget'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [teksUtama],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
          onPressed: teksUtama.state.incrementIndex,
        ),
      )));
}