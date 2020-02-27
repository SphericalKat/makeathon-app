import 'package:flutter/material.dart';

class TrackItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Image image;

  TrackItem(this.title, this.subtitle, this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, top: 4),
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: ListTile(
            leading: image,
            title: Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
