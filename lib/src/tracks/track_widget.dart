import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:makeathon/src/providers/fab_provider.dart';
import 'package:makeathon/src/tracks/track_item.dart';
import 'package:provider/provider.dart';

class TrackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController _hideButtonController = ScrollController();
    final fabVisibility = Provider.of<FabProvider>(context, listen: true);
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (fabVisibility.shouldShow) {
          fabVisibility.setShouldShow(false);
        }
      } else {
        if (!fabVisibility.shouldShow) {
          fabVisibility.setShouldShow(true);
        }
      }
    });
    return Center(
      child: ListView(
        padding: EdgeInsets.only(bottom: 8),
        controller: _hideButtonController,
        children: <Widget>[
          TrackItem(
              "Healthcare",
              "Think of how technology can compliment the current healthcare infrastructure.",
              Image.asset("assets/images/healthcare_track.png")),
          TrackItem(
              "Artificial Intelligence",
              "In today’s data-driven world, AI has the potential to transform the economic landscape of the world.",
              Image.asset("assets/images/ai_track.png")),
          TrackItem(
              "IoT and Automation",
              "Build applications on the Internet of Things that help us improve our experience in our day to day life.",
              Image.asset("assets/images/iot_track.png")),
          TrackItem(
              "Smart Homes and Smart Cities",
              "Smart homes and smart cities are emerging in response to an increasingly urbanized world dealing with scarce resources and a desire to improve energy efficiency.",
              Image.asset("assets/images/smart_home_track.png")),
          TrackItem(
              "Smart Agriculture",
              "For sustainable outcomes, only the smart application of tech and scientific advances can boost rural growth and agricultural productivity.",
              Image.asset("assets/images/smart_agro_track.png")),
          TrackItem(
              "Women and Child safety",
              "Safety of Women and children has become a major issue in the world now. Alternatives need to be found to protect the safety of women and children and to ensure their safety.",
              Image.asset("assets/images/women_safety_track.png")),
          TrackItem(
              "Autonomous Vehicles",
              "Widespread use of autonomous vehicles could eliminate 90% of all auto accidents in the United States, prevent up to US\$190 billion in damages and health-costs annually and save thousands of lives.",
              Image.asset("assets/images/auto_vehicles_track.png")),
          TrackItem(
              "Energy Management and Smart Grid",
              "It is up to us to find ways to simultaneously preserve the environment and drive development to ensure that future generations have a better world to live in.",
              Image.asset("assets/images/smart_grid_track.png")),
          TrackItem(
              "Blockchain for Sustainable Management",
              "Blockchain technologies may have a profound impact on development-oriented investment, not only by revolutionizing global payment systems but also through improvements to access to finance, supply chain management, digital identities or land registries.",
              Image.asset("assets/images/blockchain_track.png")),
          TrackItem(
              "Cyber security",
              "With each passing day, new cyber attacks are being discovered. These new cyber attacks and threats require innovative ways to tackle them and protect data.",
              Image.asset("assets/images/cybersec_track.png")),
          TrackItem(
              "Open Innovation",
              "The field of open innovation is where ideas blossom into reality and possibilities are endless. Open innovation is an increasingly important tool, across various fields and industries. Bring together technology and ideas.",
              Image.asset("assets/images/open_track.png")),
        ],
      ),
    );
  }
}
