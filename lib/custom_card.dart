import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;

  final String description;

  const CustomCard({
    required this.title,

    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(description, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}