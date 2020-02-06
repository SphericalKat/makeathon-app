import 'package:flutter/material.dart';

class TrackItem extends StatelessWidget {
  final String title;
  final Image image;

  TrackItem(this.title, this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: ListTile(
            leading: image,
            title: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Container(),
          ),
        ),
      ),
    );
  }
}
