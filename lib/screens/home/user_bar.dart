import 'package:flutter/material.dart';

class UserBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:12.0, left:12.0),
      child: Row(
        children: [
          Text('Hello Hafiz', 
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black26),
          ),
        ],
      ),
    );
  }
}