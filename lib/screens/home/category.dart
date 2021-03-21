import 'package:flutter/material.dart';
import 'package:spendmanager/models/category_objects.dart';

class Category extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.0, 
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton.icon(
              label: Text(categories[index].title),
              icon: Icon(categories[index].icon),
              onPressed: (){},
            ),
          );    
        }
      ),
    );
  }
}