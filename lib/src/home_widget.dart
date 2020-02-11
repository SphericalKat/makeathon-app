import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:makeathon/src/agenda/agenda_page.dart';
import 'package:makeathon/src/info/about_widget.dart';
import 'package:makeathon/src/organisers/organiser_page.dart';
import 'package:makeathon/src/providers/fab_provider.dart';
import 'package:makeathon/src/sponsors/sponsors_widget.dart';
import 'package:makeathon/src/tracks/track_widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'providers/bottomnav_provider.dart';

class HomeWidget extends StatelessWidget {
  final titles = [
    "Agenda",
    "Problem statements",
    "Sponsors",
    "Organising Committee",
    "Info"
  ];

  final List<Widget> body = [
    AgendaWidget(),
    TrackWidget(),
    SponsorPage(),
    OrganizerPage(),
    AboutWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    final itemSelector = Provider.of<BottomNavProvider>(context, listen: true);

    return DefaultTabController(
      length: () {
        switch (itemSelector.selectedItem) {
          case 2:
            return 4;
          case 4:
            return 3;
          default:
            return 0;
        }
      }(),
      child: Scaffold(
          floatingActionButton: _BuildFab(),
          //          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          backgroundColor: Color(0xff1d1f3e),
          appBar: AppBar(
            bottom: tabBar(itemSelector.selectedItem),
            elevation: 0,
            title: Text(
              titles[itemSelector.selectedItem],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: body[itemSelector.selectedItem],
          bottomNavigationBar: BubbleBottomBar(
            backgroundColor: Color(0xff262845),
            opacity: .2,
            currentIndex: itemSelector.selectedItem,
            onTap: (index) => itemSelector.setSelectedItem(index),
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            elevation: 8,
            hasNotch: false,
            hasInk: true,
            inkColor: Colors.black12,
            items: [
              BubbleBottomBarItem(
                  backgroundColor: Colors.greenAccent,
                  icon: Icon(Icons.event),
                  title: Text("Agenda")),
              BubbleBottomBarItem(
                  backgroundColor: Colors.blueAccent,
                  icon: Icon(MdiIcons.lightbulbOn),
                  title: Text("Tracks")),
              BubbleBottomBarItem(
                  backgroundColor: Colors.yellowAccent,
                  icon: Icon(Icons.attach_money),
                  title: Text("Sponsors")),
              BubbleBottomBarItem(
                  backgroundColor: Colors.red,
                  icon: Icon(MdiIcons.accountSupervisor),
                  title: Text("Organisers")),
              BubbleBottomBarItem(
                  backgroundColor: Colors.deepPurpleAccent,
                  icon: Icon(Icons.info_outline),
                  title: Text("Info"))
            ],
          )),
    );
  }

  Widget tabBar(int selectedItem) {
    switch (selectedItem) {
      case 4:
        {
          return TabBar(
            indicatorColor: Colors.greenAccent,
            tabs: [
              Tab(text: "About"),
              Tab(text: "Contact us"),
              Tab(text: "FAQ")
            ],
          );
        }
      case 2:
        {
          return TabBar(
            indicatorColor: Colors.greenAccent,
            tabs: [
              Tab(text: "Supported by"),
              Tab(text: "Associate Sponsors"),
              Tab(text: "Outreach Partners"),
              Tab(text: "Community Partners")
            ],
            isScrollable: true,
          );
        }
      default:
        return null;
    }
  }
}

class _BuildFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fabProvider = Provider.of<FabProvider>(context, listen: true);
    DefaultTabController.of(context).addListener(() {
      final index = DefaultTabController.of(context).index;
      if (fabProvider.currentIndex != index) fabProvider.updateIndex(index);
    });
    switch (fabProvider.currentIndex) {
      case 1:
        return SizedBox();
      default:
        return fabProvider.shouldShow
            ? FloatingActionButton.extended(
                backgroundColor: Colors.greenAccent,
                onPressed: () async {
                  const url = "https://selectmakeathon2020.hackerearth.com/";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Could not launch $url";
                  }
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                label: Text(
                  "Register",
                  style: TextStyle(color: Colors.black),
                ),
              )
            : SizedBox();
    }
  }
}
