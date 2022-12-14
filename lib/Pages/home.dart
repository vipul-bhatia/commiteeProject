import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'upcomingEvents.dart';
import 'calander.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

void contactsScreen(BuildContext context) {
    Navigator.of(context).pushNamed('/alumini');
  }

  void ourTeamScreen(BuildContext context) {
    Navigator.of(context).pushNamed('/ourTeam');
  }

  void aboutUsScreen(BuildContext context) {
    Navigator.of(context).pushNamed('/aboutUs');
  }

  void newsScreen(BuildContext context) {
    Navigator.of(context).pushNamed('/news');
  }

  void recordingScreen(BuildContext context) {
    Navigator.of(context).pushNamed('/recording');
  }

  void resultsScreen(BuildContext context) {
    Navigator.of(context).pushNamed('/results');
  }

  void feedbackScreen(BuildContext context) {
    Navigator.of(context).pushNamed('/feedback');
  }

    final List<Map<String ,dynamic>> _pages = [
    {'Pages': upcomingEvents(), 'title': 'Upcoming Events'},
    {'Pages': CalanderScreen(), 'title' : 'Events'},
    {'Pages': profilePage(), 'title' : 'Profile'},
  ];
   int _SeletedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _SeletedPageIndex = index;
    });
  }
@override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      // initialIndex: 0,
      child: Scaffold(
        appBar:AppBar(
         iconTheme: IconThemeData(color: Colors.orange),
        backgroundColor: Colors.indigoAccent,
        title: Text(
 _pages[_SeletedPageIndex]['title'],
    style: TextStyle(
          fontFamily: 'Lexend Deca',
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
  ),
        centerTitle: true,
        elevation: 0.0,
      ),
        // appBar: AppBar(
        //   backgroundColor: Colors.orange,
          
        //   title: Text(_pages[_SeletedPageIndex]['title']),
        // ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
            Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Winners Never Quit and Quitters Never Win',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          SizedBox(
              height: 20,
              width: 20,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('About Us'),
              onTap: () {
                Navigator.of(context).pushNamed('/aboutUs');
              },
            ),  
            SizedBox(
              height: 20,
              width: 20,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Our Team'),
              onTap: () {
                Navigator.of(context).pushNamed('/ourTeam');
              },
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('Alumini of NMIMS'),
              onTap: () {
                Navigator.of(context).pushNamed('/alumini');
              },
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            ListTile(
              leading: Icon(Icons.record_voice_over),
              title: Text('Recordings'),
              onTap: () {
                Navigator.of(context).pushNamed('/recording');
              },
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            ListTile(
              leading: Icon(Icons.newspaper),
              title: Text('Latest News'),
              onTap: () {
                Navigator.of(context).pushNamed('/news');
              },
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            ListTile(
              leading: Icon(Icons.mark_as_unread),
              title: Text('Results'),
              onTap: () {
                Navigator.of(context).pushNamed('/results');
              },
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            ListTile(
              leading: Icon(Icons.feedback_outlined),
              title: Text('Feedback/Suggestions'),
              onTap: () {
                Navigator.of(context).pushNamed('/feedback');
              },
            ),
            ],
          ),
        ),
        body: _pages[_SeletedPageIndex]['Pages'],
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.event, size: 30),
            Icon(Icons.person, size: 30),
          ],
          color: Colors.indigoAccent,
          buttonBackgroundColor: Colors.orange,
          backgroundColor: Colors.indigo,
          animationCurve: Curves.easeInOutSine,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _SeletedPageIndex = index;
            });
          },
        ),
      )
    );
  }
}
        
        // bottomNavigationBar: BottomNavigationBar(
        //   onTap: _selectPage,
        //   backgroundColor: Theme.of(context).primaryColor,
        //   unselectedItemColor: Colors.white,
        //   selectedItemColor: Colors.black,
        //   currentIndex: _SeletedPageIndex, 
          
        //   items: [
        //      BottomNavigationBarItem(
        //       icon: Icon(Icons.celebration),
        //       label: 'Competetion',
        //     ),
        //      BottomNavigationBarItem(
        //       icon: Icon(Icons.event),
        //       label: 'Events',
        //     ),
        //   ],
        //    ),
   
