import 'package:flutter/material.dart';
import 'package:working_it/ExtraPage.dart';
import 'package:working_it/FeedPage.dart';
import 'package:working_it/ProfilePage.dart';

//Main Function
void main() => runApp(MaterialApp(
  //Disables debug tag
  debugShowCheckedModeBanner: false,
  home: MainPage(),
));

//Here is where all code is constructed
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //Here is where variables are defined to be used inside the MainPage class
  int currentIndex =0;

  //This helps with the navigation
  //'final' is used so the widgets are not rebuild everytime thus optimizing the app
  final screens = [
    //This calls the News Feed class
    FeedPage(),

    //This calls the ProfilePage class
    ProfilePage(),

    //This is for other pages that will be later implemented
    ExtraPage(),
  ];

//Inside the build function is where all the magic happens
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //This is the top bar with the name of the app
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.05, 0),
                child: Text(
                  'Working It',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          centerTitle: true,
          elevation: 4,
        ),
      //Here is where all widgets are called using an Index
      body: screens[currentIndex],

      //This is the navigation bar at the bottom
      bottomNavigationBar: BottomNavigationBar(
        //For coloring bottom navigation bar
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.black,
        // selectedItemColor: Colors.red,
        // unselectedItemColor: Colors.white,


        //This is needed to change menu icon
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex =index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:'Profile',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.liquor),
            label:'Extra',
          ),
        ],
      ),
    );
  }
}