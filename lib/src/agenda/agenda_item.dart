import 'package:flutter/material.dart';

class AgendaItem extends StatelessWidget {
  final String title;
  final String timing;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Card(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 16),
                  child: icon,
                ),
                Text(title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 16),
                  child: Icon(
                    Icons.accessibility,
                    color: Colors.transparent,
                  ),
                ),
                Text(timing)
              ],
            )
          ],
        ),
      )),
    );
  }

  AgendaItem(this.title, this.timing, this.icon);
}
