import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makeathon/src/agenda/agenda_page.dart';
import 'package:makeathon/src/info/about_widget.dart';
import 'package:makeathon/src/organisers/organiser_page.dart';
import 'package:makeathon/src/tracks/track_widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

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
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Some fake info!"),
          Text(
            "The makeathon team says bye!",
          ),
        ],
      ),
    ),
    OrganizerPage(),
    AboutWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    final itemSelector = Provider.of<BottomNavProvider>(context, listen: true);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            onPressed: null,
            icon: Icon(MdiIcons.cashRegister), label: Text("Register"),
          ),
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
//            fabLocation: null,
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
                  backgroundColor: Colors.purpleAccent,
                  icon: Icon(Icons.info_outline),
                  title: Text("Info"))
            ],
          )),
    );
  }

//  Widget bottomNav() {
//    return BottomNavigationBar(
//      selectedItemColor: Color(0xff69f0ae),
//      backgroundColor: Color(0xff262845),
//      type: BottomNavigationBarType.fixed,
//      currentIndex: itemSelector.selectedItem,
//      items: [
//        BottomNavigationBarItem(
//          icon: Icon(Icons.event),
//          title: Text("Agenda"),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(MdiIcons.lightbulbOn),
//          title: Text("Themes"),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.attach_money),
//          title: Text("Sponsors"),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(MdiIcons.accountSupervisor),
//          title: Text("Organisers"),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.info_outline),
//          title: Text("Info"),
//        ),
//      ],
//      onTap: (index) => itemSelector.setSelectedItem(index),
//    );
//  }

  Widget tabBar(int selectedItem) {
    return selectedItem != 4
        ? null
        : TabBar(
            tabs: [
              Tab(
                text: "About",
              ),
              Tab(
                text: "Contact us",
              ),
              Tab(
                text: "FAQ",
              )
            ],
          );
  }
}
