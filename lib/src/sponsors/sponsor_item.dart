import 'package:flutter/material.dart';

class SponsorItem extends StatelessWidget {
  final Image image;
  final String name;

  SponsorItem(this.image, this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 42, left: 42, top: 12),
      child: Card(
        color: Color(0xff262845),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: image,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10, bottom: 12),
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
