import 'package:flutter/material.dart';
import 'package:makeathon/src/tracks/routes/route_item.dart';

class TrackItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Image image;
  final List<Widget> routeItems;

  TrackItem(this.title, this.subtitle, this.image, this.routeItems);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, top: 4),
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ProblemStatement(title, routeItems)));
            },
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
