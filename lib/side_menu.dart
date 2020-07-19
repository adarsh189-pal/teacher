import 'package:flutter/material.dart';
import 'pages/time_table_page.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  bool _isHidden = true;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff262AAA),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.perm_contact_calendar,
                  color: Colors.white,
                ),
                title: Text(
                  'Students',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TimeTablePage()));
                  });
                },
                leading: Icon(
                  Icons.folder,
                  color: Colors.white,
                ),
                title: Text(
                  'Time Table',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.insert_invitation,
                  color: Colors.white,
                ),
                title: Text(
                  'Shift Class',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.folder_open,
                  color: Colors.white,
                ),
                title: Text(
                  'View Shifted Class (Given)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.folder_open,
                  color: Colors.white,
                ),
                title: Text(
                  'View Shifted Class (Taken)',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text(
                                'Change Password',
                                style: TextStyle(color: Color(0xff262AAA)),
                              ),
                              content: StatefulBuilder(
                                builder: (BuildContext context,
                                    StateSetter setState) {
                                  return TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Change Password',
                                        suffixIcon: IconButton(
                                          onPressed: _toggleVisibility,
                                          icon: _isHidden
                                              ? Icon(Icons.visibility_off)
                                              : Icon(Icons.visibility),
                                        )),
                                    obscureText: _isHidden,
                                  );
                                },
                              ),
                              actions: <Widget>[
                                MaterialButton(
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(color: Color(0xff262AAA)),
                                  ),
                                  onPressed: () {},
                                )
                              ]);
                        });
                  });
                },
                leading: Icon(
                  Icons.create,
                  color: Colors.white,
                ),
                title: Text(
                  'Change Password',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.input,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
