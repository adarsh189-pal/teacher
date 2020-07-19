import 'package:flutter/material.dart';

class AddAttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddAttendance(),
      appBar: AppBar(
        title: Text('Sharda University'),
        backgroundColor: Color(0xff262AAA),
        centerTitle: true,
      ),
    );
  }
}

class AddAttendance extends StatefulWidget {
  @override
  _AddAttendanceState createState() => _AddAttendanceState();
}

class _AddAttendanceState extends State<AddAttendance> {
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
    return ListView(
      children: <Widget>[
        Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 10.0, bottom: 0),
            child: Container(
              child: Text(
                'Add Attendance',
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
                left: 10.0, right: 10.0, top: 30.0, bottom: 0.0),
            child: Container(
              width: double.infinity,
              height: 120.0,
              decoration: BoxDecoration(
                color: Color(0xff262AAA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              margin: EdgeInsets.only(
                  left: 20.0, top: 0.0, right: 20.0, bottom: 0.0),
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
                left: 10.0, right: 10.0, top: 30.0, bottom: 0.0),
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
              margin: EdgeInsets.only(
                  left: 20.0, top: 0.0, right: 20.0, bottom: 0.0),
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
                left: 10.0, right: 10.0, top: 30.0, bottom: 0.0),
            child: Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              margin: EdgeInsets.only(
                  left: 10.0, top: 0.0, right: 10.0, bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Adarsh',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '2017004845',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 30.0, bottom: 0.0),
            child: Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              margin: EdgeInsets.only(
                  left: 10.0, top: 0.0, right: 10.0, bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hardik',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '2017002147',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )),
        SizedBox(
          height: 70.0,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.only(left: 100.0, right: 100.0),
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
      ],
    );
  }
}
