
import 'package:flutter_application_1/screens/Profile.dart';
import 'package:flutter_application_1/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Mood.dart';

class HeartPage extends StatefulWidget{
  const HeartPage({super.key});

  @override
  _HeartPageState createState()=>_HeartPageState();
}

class _HeartPageState extends State<HeartPage>{
  int currentIndex =0;
  final screens =[
    HeartHome(),
    TableEventsExample(),
    ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar (title: const Text("Planery Exclusive! "),
      backgroundColor: Color.fromARGB(255, 236, 139, 103),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed:(){} 
        ),
      ]
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: 
      GNav(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        backgroundColor: Color.fromARGB(255, 236, 139, 103),
        color: Colors.black,
        activeColor: Colors.white,
        tabBackgroundColor: Color.fromARGB(255, 231, 156, 89),
        onTabChange: (index) => setState(() => currentIndex = index),
        gap: 50,
        tabs: const [
          GButton(
            icon: Icons.favorite,
            text: 'Moods',
          ),
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ],
      ),
    );
  }
}

    