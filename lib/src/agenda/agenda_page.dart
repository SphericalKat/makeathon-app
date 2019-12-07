import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makeathon/src/agenda/agenda_item.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AgendaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, top: 16),
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
                    "5:30 PM",
                    Icon(MdiIcons.star),
                  ),
                  AgendaItem(
                    "Inaugral Ceremony",
                    "6:00 PM",
                    Icon(Icons.mic),
                  ),
                  AgendaItem(
                    "Problem Statement Description",
                    "6:30 PM",
                    Icon(Icons.mic),
                  ),
                  AgendaItem(
                    "Component Form Submission",
                    "7:30 PM",
                    Icon(Icons.format_list_bulleted),
                  ),
                  AgendaItem(
                    "Making begins!",
                    "8:00 PM",
                    Icon(MdiIcons.xml),
                  ),
                  AgendaItem(
                    "Dinner",
                    "8:30 PM",
                    Icon(Icons.restaurant_menu),
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
              padding: EdgeInsets.only(left: 12, right: 12, top: 16),
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
                    "Breakfast",
                    "8:00 AM",
                    Icon(Icons.free_breakfast),
                  ),
                  AgendaItem(
                    "Milestone Check 1",
                    "11:30 AM",
                    Icon(Icons.filter_1),
                  ),
                  AgendaItem(
                    "Lunch",
                    "1:00 PM",
                    Icon(Icons.fastfood),
                  ),
                  AgendaItem(
                    "Snacks",
                    "6:00",
                    Icon(Icons.free_breakfast),
                  ),
                  AgendaItem(
                    "Dinner",
                    "8:00 PM",
                    Icon(Icons.restaurant_menu),
                  ),
                  AgendaItem(
                    "Milestone Check 2",
                    "8:30 PM",
                    Icon(Icons.filter_2),
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
              padding: EdgeInsets.only(left: 12, right: 12, top: 16),
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
                    "Making Ends/Breakfast",
                    "8:00 AM",
                    Icon(Icons.free_breakfast),
                  ),
                  AgendaItem(
                    "Qualifier round",
                    "9:00 AM",
                    Icon(MdiIcons.scaleBalance),
                  ),
                  AgendaItem(
                    "Lunch",
                    "1:00 PM",
                    Icon(Icons.fastfood),
                  ),
                  AgendaItem(
                    "Final Presentation",
                    "2:00 PM",
                    Icon(MdiIcons.presentationPlay),
                  ),
                  AgendaItem(
                    "Prize Distribution & Valedictory",
                    "4:00 PM",
                    Icon(MdiIcons.trophyVariant),
                  ),
                  AgendaItem(
                    "Dinner",
                    "8:30 PM",
                    Icon(Icons.restaurant_menu),
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
