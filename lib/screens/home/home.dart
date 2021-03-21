import 'package:flutter/material.dart';
import 'package:spendmanager/screens/home/category.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50.0,
            child: Category()      
          ),
        ],
      ),
    );
  }

  
}