import 'package:flutter/material.dart';
import 'package:teacher/pages/add_marksheets_page.dart';
import 'package:teacher/pages/view_marksheets_page.dart';
import 'package:teacher/pages/edit_marksheets_page.dart';

class MarksheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Marksheet(),
    );
  }
}

class Marksheet extends StatefulWidget {
  @override
  _MarksheetState createState() => _MarksheetState();
}

class _MarksheetState extends State<Marksheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff262AAA), Colors.blue[900]],
        )),
        child: SafeArea(
            child: ListView(children: <Widget>[
          Expanded(
              child: Stack(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20.0, bottom: 0.0),
                child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                    ),
                    margin: EdgeInsets.only(
                        left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.assignment_turned_in,
                          size: 50.0,
                          color: Color(0xff262AAA),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AddMarksheetsPage()));
                            });
                          },
                          child: Container(
                            child: Text(
                              'Add Marksheets',
                              style: TextStyle(
                                  color: Color(0xff262AAA), fontSize: 15.0),
                            ),
                          ),
                        )
                      ],
                    ))),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 145.0, bottom: 0.0),
              child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                  ),
                  margin: EdgeInsets.only(
                      left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.assignment,
                        size: 50.0,
                        color: Color(0xff262AAA),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ViewMarksheetsPage()));
                          });
                        },
                        child: Container(
                          child: Text(
                            'View Marksheet',
                            style: TextStyle(
                                color: Color(0xff262AAA), fontSize: 15.0),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 275.0, bottom: 0.0),
              child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                  ),
                  margin: EdgeInsets.only(
                      left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.assignment_late,
                        size: 50.0,
                        color: Color(0xff262AAA),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        EditMarksheetsPage()));
                          });
                        },
                        child: Container(
                          child: Text(
                            'Edit Marksheet',
                            style: TextStyle(
                                color: Color(0xff262AAA), fontSize: 15.0),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ]))
        ])));
  }
}
