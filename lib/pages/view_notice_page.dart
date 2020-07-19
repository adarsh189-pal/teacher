import 'package:flutter/material.dart';

class ViewNoticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sharda University'),
        backgroundColor: Color(0xff262AAA),
        centerTitle: true,
      ),
      body: ViewNotice(),
    );
  }
}

class ViewNotice extends StatefulWidget {
  @override
  _ViewNoticeState createState() => _ViewNoticeState();
}

class _ViewNoticeState extends State<ViewNotice> {
  List<String> _locations = [
    'SET-CS Year1-SEC A',
    'SET-CS Year1-SEC B',
    'SET-CS Year1-SEC C',
    'SET-CS Year1-SEC D'
  ];
  String _selectedLocation = 'SET-CS Year1-SEC A';
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
                'View Notice',
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
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              margin: EdgeInsets.only(
                  left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
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
              height: 120.0,
              decoration: BoxDecoration(
                color: Color(0xff262AAA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              margin: EdgeInsets.only(
                  left: 10.0, top: 0.0, right: 10.0, bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    '15-11-2019',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Adarsh',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Pal',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
