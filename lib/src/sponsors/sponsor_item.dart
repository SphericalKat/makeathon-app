import 'package:flutter/material.dart';

class SponsorItem extends StatelessWidget {
  final Image image;
  final String name;
  final String position;

  SponsorItem(this.image, this.name, this.position);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 69, left: 69, top: 12),
      child: Card(
        color: Color(0xff262845),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: image,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Text(name, style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10, bottom: 16),
              child: Text(position, style: TextStyle(fontSize: 16),),
            )
          ],
        ),
      ),
    );
  }
}