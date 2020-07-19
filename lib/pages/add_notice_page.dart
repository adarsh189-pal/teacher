import 'package:flutter/material.dart';

class AddNoticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sharda University'),
        backgroundColor: Color(0xff262AAA),
        centerTitle: true,
      ),
      body: AddNotice(),
    );
  }
}

class AddNotice extends StatefulWidget {
  @override
  _AddNoticeState createState() => _AddNoticeState();
}

class _AddNoticeState extends State<AddNotice> {
  List<String> _locations = [
    'SET-CS Year1-SEC A',
    'SET-CS Year1-SEC B',
    'SET-CS Year1-SEC C',
    'SET-CS Year1-SEC D'
  ];
  String _selectedLocation = 'SET-CS Year1-SEC A';
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 0, right: 0, top: 10.0, bottom: 0),
          child: Container(
            child: Text(
              'Upload Notice',
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
            margin:
                EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
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
      SizedBox(
        height: 20.0,
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 10.0, top: 0, bottom: 0, right: 10.0),
        child: TextFormField(decoration: InputDecoration(labelText: 'Topic')),
      ),
      SizedBox(
        height: 30.0,
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 10.0, top: 0, bottom: 0, right: 10.0),
        child: TextFormField(
            decoration: InputDecoration(labelText: 'Description')),
      ),
      SizedBox(height: 45.0),
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
              'UPLOAD',
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            )),
      ),
    ]);
  }
}
