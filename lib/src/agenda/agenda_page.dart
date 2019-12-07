import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makeathon/src/agenda/agenda_item.dart';

class AgendaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Text("25",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("MAR",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Column(children: [
                  AgendaItem(
                    "Check-In",
                    "5:30 PM - 6:00 PM",
                    Icon(Icons.star),
                  ),
                  AgendaItem(
                    "Inaugral Ceremony",
                    "6:00 PM - 6:30 PM",
                    Icon(Icons.star),
                  ),
                  AgendaItem(
                    "Problem Statement Description",
                    "6:30 PM - 7:30 PM",
                    Icon(Icons.mic),
                  ),
                  AgendaItem(
                    "Component Form Submission",
                    "7:30 PM- 8:00 PM",
                    Icon(Icons.format_list_bulleted),
                  ),
                  AgendaItem(
                    "Making begins!",
                    "8:00 PM - 8:30 PM",
                    Icon(Icons.code),
                  ),
                  AgendaItem(
                    "Dinner",
                    "8:30 PM",
                    Icon(Icons.fastfood),
                  ),
                ]),
              ),
            )
          ],
        ),
        SizedBox(height: 16,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Text("26",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("MAR",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Column(children: [
                  AgendaItem(
                    "Check-In",
                    "5:30 PM - 6:00 PM",
                    Icon(Icons.star),
                  ),
                  AgendaItem(
                    "Inaugral Ceremony",
                    "6:00 PM - 6:30 PM",
                    Icon(Icons.star),
                  ),
                  AgendaItem(
                    "Problem Statement Description",
                    "6:30 PM - 7:30 PM",
                    Icon(Icons.mic),
                  ),
                  AgendaItem(
                    "Component Form Submission",
                    "7:30 PM- 8:00 PM",
                    Icon(Icons.format_list_bulleted),
                  ),
                  AgendaItem(
                    "Making begins!",
                    "8:00 PM - 8:30 PM",
                    Icon(Icons.code),
                  ),
                  AgendaItem(
                    "Dinner",
                    "8:30 PM",
                    Icon(Icons.fastfood),
                  ),
                ]),
              ),
            )
          ],
        ),
        SizedBox(height: 16,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Text("27",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("MAR",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Column(children: [
                  AgendaItem(
                    "Check-In",
                    "5:30 PM - 6:00 PM",
                    Icon(Icons.star),
                  ),
                  AgendaItem(
                    "Inaugral Ceremony",
                    "6:00 PM - 6:30 PM",
                    Icon(Icons.star),
                  ),
                  AgendaItem(
                    "Problem Statement Description",
                    "6:30 PM - 7:30 PM",
                    Icon(Icons.mic),
                  ),
                  AgendaItem(
                    "Component Form Submission",
                    "7:30 PM- 8:00 PM",
                    Icon(Icons.format_list_bulleted),
                  ),
                  AgendaItem(
                    "Making begins!",
                    "8:00 PM - 8:30 PM",
                    Icon(Icons.code),
                  ),
                  AgendaItem(
                    "Dinner",
                    "8:30 PM",
                    Icon(Icons.fastfood),
                  ),
                ]),
              ),
            )
          ],
        ),
        SizedBox(height: 16,),
      ],
    );
  }
}
