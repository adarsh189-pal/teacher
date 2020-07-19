import 'package:flutter/material.dart';

class TimeTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimeTable(),
      appBar: AppBar(
        backgroundColor: Color(0xff262AAA),
        title: Text('Sharda University'),
        centerTitle: true,
      ),
    );
  }
}

class TimeTable extends StatefulWidget {
  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  List<String> _locations = [
    'MONDAY',
    'TUESDAY',
    'WEDNESDAY',
    'THURSDAY',
    'FRIDAY',
  ];
  String _selectedLocation = 'MONDAY';
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 0, right: 0, top: 8.0, bottom: 0),
          child: Container(
            child: Text(
              'Time Table',
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
      Expanded(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 150,
                width: double.infinity,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xff262AAA), Colors.blue[900]]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'School of Engineering And Technology  ',
                          style: TextStyle(color: Colors.white, fontSize: 11.0),
                        ),
                        Text(
                          '02:15 - 03:05 / 7',
                          style: TextStyle(color: Colors.white, fontSize: 11.0),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Computer Science and Engineering (CSE)',
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(color: Colors.white, fontSize: 11.0)),
                      ],
                    ),
                    Text(
                      'CSE 114',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    Text(
                      'Web Development',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'YEAR 1-SEC A/G1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                          ),
                        ),
                        SizedBox(
                          width: 150.0,
                        ),
                        Text('211 Block 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11.0,
                            ))
                      ],
                    )
                  ],
                ),
              )))
    ]);
  }
}
