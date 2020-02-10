import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:makeathon/src/providers/fab_provider.dart';
import 'package:provider/provider.dart';
import 'sponsor_item.dart';

class SponsorPage extends StatelessWidget {
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
    return TabBarView(
      children: [
        Center(
          child: ListView(
            controller: _hideButtonController,
            padding: EdgeInsets.only(bottom: 24),
            children: [
              SponsorItem(
                  Image.asset("assets/images/sponsors/vit.jpeg"), "VIT-TBI"),
              SponsorItem(
                  Image.asset("assets/images/sponsors/birac.png"), "Birac"),
            ],
          ),
        ),
        Center(
          child: ListView(
            controller: _hideButtonController,
            padding: EdgeInsets.only(bottom: 24),
            children: [
              SponsorItem(
                  Image.asset("assets/images/sponsors/github.png"), "GitHub"),
              SponsorItem(
                  Image.asset("assets/images/sponsors/linode.png"), "Linode"),
            ],
          ),
        ),
        Center(
          child: ListView(
            controller: _hideButtonController,
            padding: EdgeInsets.only(bottom: 24),
            children: [
              SponsorItem(Image.asset("assets/images/sponsors/incubateind.png"),
                  "Incubate IND"),
            ],
          ),
        ),
        Center(
          child: ListView(
            controller: _hideButtonController,
            padding: EdgeInsets.only(bottom: 24),
            children: [
              SponsorItem(Image.asset("assets/images/sponsors/balsamiq.png"),
                  "Balsamiq"),
              SponsorItem(Image.asset("assets/images/sponsors/cloudsploit.png"),
                  "CloudSploit"),
              SponsorItem(Image.asset("assets/images/sponsors/rosenfeld.png"),
                  "Rosenfeld"),
              SponsorItem(
                  Image.asset("assets/images/sponsors/wolfram.png"), "Wolfram"),
              SponsorItem(Image.asset("assets/images/sponsors/souledstore.png"),
                  "The Souled Store"),
              SponsorItem(
                  Image.asset("assets/images/sponsors/bugsee.png"), "Bugsee"),
              SponsorItem(Image.asset("assets/images/sponsors/creativetim.png"),
                  "Creative Tim"),
              SponsorItem(
                  Image.asset("assets/images/sponsors/challengerocket.png"),
                  "ChallengeRocket.com"),
            ],
          ),
        )
      ],
    );
  }
}
