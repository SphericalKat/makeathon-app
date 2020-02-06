import 'package:flutter/material.dart';
import 'package:makeathon/src/tracks/track_item.dart';

class TrackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          TrackItem(
              "Healthcare", Image.asset("assets/images/healthcare_track.png"))
        ],
      ),
    );
  }
}
