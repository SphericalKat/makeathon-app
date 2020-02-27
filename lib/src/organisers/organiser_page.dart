import 'package:flutter/material.dart';
import 'organiser_item.dart';

class OrganizerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Center(
//      child: ListView(
//        children: [
//          OrganiserItem(Image.asset("assets/images/logomake.png"), "Someone",
//              "Something"),
//          OrganiserItem(Image.asset("assets/images/logomake.png"), "Someone",
//              "Something"),
//          OrganiserItem(Image.asset("assets/images/logomake.png"), "Someone",
//              "Something"),
//          OrganiserItem(Image.asset("assets/images/logomake.png"), "Someone",
//              "Something"),
//        ],
//      ),
//    );
    return Center(
      child: Text(
        "Coming soon!",
        style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
