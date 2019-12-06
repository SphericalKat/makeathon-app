import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makeathon/src/agenda/agenda_item.dart';

class AgendaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Text("7",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text("MAR",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 12),
            child: ListView(shrinkWrap: true, children: [
              AgendaItem("Introduction", "9:00 AM - 10:00 AM", Icon(Icons.info)),
              AgendaItem(
                  "Speaker - Speaker1", "10:00 AM - 10:30 AM", Icon(Icons.mic)),
              AgendaItem(
                  "Speaker - Speaker2", "10:30 AM - 11:00 AM", Icon(Icons.mic)),
              AgendaItem(
                  "Speaker - Speaker3", "11:00 AM - 11:30 AM", Icon(Icons.mic)),
              AgendaItem("Lunch", "12:00 PM - 2:00 PM", Icon(Icons.fastfood)),
            ]),
          ),
        )
      ],
    );
  }
}
