import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutItem extends StatelessWidget {
  final String title;
  final String body;

  AboutItem(this.title, this.body);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.greenAccent,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            body,
            style: TextStyle(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
