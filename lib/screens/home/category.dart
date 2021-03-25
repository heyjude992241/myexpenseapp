import 'package:flutter/material.dart';
import 'package:spendmanager/models/category_objects.dart';
import 'package:spendmanager/themes/style.dart';

class Category extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:12.0, left: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Goals', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              Text('See all', style: TextStyle(fontSize: 10.0, color: Colors.blue[200]),),
            ],
          ),
        ),
        Container(
          height: 210.0, 
          padding: EdgeInsets.only(left: 12.0),
          color: Colors.grey[200],
          child: Goals()
        )
      ],
      );
  
  }
}

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildGoal("iPad", "iPad baru 2021"),
          _buildGoal("Motor baru", "YSuku"),
          _buildGoal("Beli rumah", "Rumah RM1 juta"),
          _buildGoal("Kereta", "Kereta Proton X70"),
          _buildGoal("Hari tua", "Simpanan hari tua")
        ],
      );

  }

  Widget _buildGoal(String title, String description){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Style.secondary,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
          color: Colors.black26,
          offset: Offset(0, 2),
          blurRadius: 10.0
        )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0, bottom: 8.0),
            child: Text(description),
          )
        ],
      ),
    );
  }
}