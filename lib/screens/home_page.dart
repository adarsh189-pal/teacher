import 'package:flutter/material.dart';

import 'package:teacher/curve_background.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              CurveContainer(250.0),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20.0, bottom: 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 190.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    margin: EdgeInsets.only(
                        left: 50.0, top: 0.0, right: 50.0, bottom: 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Welcome,',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Name:  ',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Teacher 4',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Code:  ',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'tea4',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Email:  ',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'teacher4@gmail.com',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'System ID:  ',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '2017004845',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Number:  ',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '9050422405',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Expanded(
          child: Text(
            'Time Table',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 11.0),
                          ),
                          Text(
                            '02:15 - 03:05 / 7',
                            style:
                                TextStyle(color: Colors.white, fontSize: 11.0),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('Computer Science and Engineering (CSE)',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11.0)),
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
      ],
    );
  }
}
