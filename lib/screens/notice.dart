import 'package:flutter/material.dart';
import 'package:teacher/pages/add_notice_page.dart';
import 'package:teacher/pages/view_notice_page.dart';

class NoticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Notice(),
    );
  }
}

class Notice extends StatefulWidget {
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
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
                                              AddNoticePage()));
                                });
                              },
                              child: Container(
                                child: Text(
                                  'Add Notice',
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
                            Icons.poll,
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
                                            ViewNoticePage()));
                              });
                            },
                            child: Container(
                              child: Text(
                                'View Notice',
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
