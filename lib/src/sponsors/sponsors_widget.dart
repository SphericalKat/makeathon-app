import 'package:flutter/material.dart';
import 'sponsor_item.dart';

class SponsorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          // SponsorItem(Image.asset("assets/images/sponsors/vit.jpeg"), "VIT-TBI",
          //     ""),
          SponsorItem(Image.asset("assets/images/sponsors/birac.png"), "Birac",
              ""),
          SponsorItem(Image.asset("assets/images/sponsors/github.png"), "GitHub",
              "Associate Sponsor"),
          SponsorItem(Image.asset("assets/images/sponsors/linode.png"), "Linode",
              "Associate Sponsor"),
          SponsorItem(Image.asset("assets/images/sponsors/incubateind.png"), "Incubate IND",
              "Outreach Partner"),
        ],
      ),
    );
  }
}
