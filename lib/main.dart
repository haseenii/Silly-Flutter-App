import 'package:flutter/material.dart';

void main() {
  //launching our app       **required!!
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //constructor      **required!!
  const MyApp({super.key});

  //the build/root widget      **required!!
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //here is all the other widgets you will need under MaterialApp
      theme: ThemeData(
        //all of the theme properties 
        primarySwatch: Colors.amber),
      home: HomePage() // <-- here, we are calling an instance of a HomePage (which returns the homepage screen/widget)
    );
  }
}

class HomePage extends StatelessWidget {
  //constructor
  const HomePage({super.key});

  //the build/root widget for HomePage widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top of the screen bar
      appBar: AppBar(
        title: const Text("My App"),
        backgroundColor: Colors.amber,
        shape: const RoundedRectangleBorder(),
      ),
      // Bottom of the screen bar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          // Home icon
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          // Profile icon
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          )
        ],
        backgroundColor: Colors.amber,
      ),
    );
  }


}