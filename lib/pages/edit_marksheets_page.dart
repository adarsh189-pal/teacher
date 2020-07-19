import 'package:flutter/material.dart';

class EditMarksheetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditMarksheet(),
      appBar: AppBar(
        backgroundColor: Color(0xff262AAA),
        title: Text('Sharda University'),
        centerTitle: true,
      ),
    );
  }
}

class EditMarksheet extends StatefulWidget {
  @override
  _EditMarksheetState createState() => _EditMarksheetState();
}

class _EditMarksheetState extends State<EditMarksheet> {
  List<String> _locations = [
    'SET-CS Year1-SEC A AUTOMATA',
    'SET-CS Year1-SEC B AUTOMATA',
    'SET-CS Year1-SEC C AUTOMATA',
    'SET-CS Year1-SEC D AUTOMATA'
  ];
  List<String> _groups = ['G1', 'G2'];
  String _selectedLocation = 'SET-CS Year1-SEC A AUTOMATA';
  String _selectedGroup = 'G1';
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 0, right: 0, top: 8.0, bottom: 0),
          child: Container(
            child: Text(
              'Edit Marksheets',
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
              left: 10.0, right: 10.0, top: 20.0, bottom: 0.0),
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
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff262AAA), Colors.blue[900]]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'HOD 1',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                    Text(
                      'CSE 111',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                Text(
                  'ASSIGNMENT 1-10',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'hd 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '11-07-2020',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                )
              ],
            ),
          )),
      Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff262AAA), Colors.blue[900]]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'HOD 1',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                    Text(
                      'CSE 111',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                Text(
                  'QUIZ 1-10',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'hd 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '21-11-2019',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                )
              ],
            ),
          )),
      Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff262AAA), Colors.blue[900]]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'HOD 1',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                    Text(
                      'CSE 111',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                Text(
                  'ASSIGNMENT 1-10',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'hd 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '11-07-2020',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                )
              ],
            ),
          )),
    ]);
  }
}
