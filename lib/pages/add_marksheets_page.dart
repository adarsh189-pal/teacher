import 'package:flutter/material.dart';

class AddMarksheetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddMarksheet(),
      appBar: AppBar(
        title: Text('Sharda University'),
        backgroundColor: Color(0xff262AAA),
        centerTitle: true,
      ),
    );
  }
}

class AddMarksheet extends StatefulWidget {
  @override
  _AddMarksheetState createState() => _AddMarksheetState();
}

class _AddMarksheetState extends State<AddMarksheet> {
  List<String> _locations = [
    'SET-CS Year1-SEC A AUTOMATA',
    'SET-CS Year1-SEC B AUTOMATA',
    'SET-CS Year1-SEC C AUTOMATA',
    'SET-CS Year1-SEC D AUTOMATA'
  ];
  List<String> _groups = ['G1', 'G2'];
  List<String> _quiz = [
    'Quiz 1',
    'Quiz 2',
    'Quiz 3',
    'Assignment 1',
    'Assignment 2',
    'Assignment 3'
  ];

  String _selectedLocation = 'SET-CS Year1-SEC A AUTOMATA';
  String _selectedGroup = 'G1';
  String _selectedQuiz = 'Quiz 1';
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 0, right: 0, top: 8.0, bottom: 0),
          child: Container(
            child: Text(
              'Add Marksheets',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 20.0, bottom: 0.0),
          child: Container(
            width: double.infinity,
            height: 140.0,
            decoration: BoxDecoration(
              color: Color(0xff262AAA),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            margin:
                EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0, bottom: 0.0),
            child: Center(
              child: DropdownButton(
                dropdownColor: Color(0xff262AAA),
                icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                style: TextStyle(color: Colors.white),
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
          )),
      Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
          child: Container(
            width: double.infinity,
            height: 70.0,
            decoration: BoxDecoration(
              color: Color(0xff262AAA),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            margin:
                EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0, bottom: 0.0),
            child: Center(
              child: DropdownButton(
                dropdownColor: Color(0xff262AAA),
                icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                style: TextStyle(color: Colors.white),
                value: _selectedGroup,
                onChanged: (newValue) {
                  setState(() {
                    _selectedGroup = newValue;
                  });
                },
                items: _groups.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
          )),
      Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
          child: Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              color: Color(0xff262AAA),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            margin:
                EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0, bottom: 0.0),
            child: Center(
              child: DropdownButton(
                dropdownColor: Color(0xff262AAA),
                icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                style: TextStyle(color: Colors.white),
                value: _selectedQuiz,
                onChanged: (newValue) {
                  setState(() {
                    _selectedQuiz = newValue;
                  });
                },
                items: _quiz.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
          )),
      Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
          child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xff262AAA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              margin: EdgeInsets.only(
                  left: 10.0, top: 0.0, right: 10.0, bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 10.0),
                        child: Text(
                          'Adarsh',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20.0, top: 15.0),
                        child: Text(
                          '0',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 211.0, bottom: 7.0),
                    child: Text(
                      '2017004845',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  )
                ],
              ))),
      Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
          child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xff262AAA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              margin: EdgeInsets.only(
                  left: 10.0, top: 0.0, right: 10.0, bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 10.0),
                        child: Text(
                          'Adarsh',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20.0, top: 15.0),
                        child: Text(
                          '0',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 211.0, bottom: 7.0),
                    child: Text(
                      '2017004845',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  )
                ],
              ))),
      Container(
        height: 50.0,
        margin: EdgeInsets.only(left: 100.0, right: 100.0, top: 120.0),
        child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Color(0xFF262AAA),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'SUBMIT',
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            )),
      ),
    ]);
  }
}
