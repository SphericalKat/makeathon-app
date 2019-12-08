import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makeathon/src/agenda/agenda_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class ItemSelector with ChangeNotifier {
  int selectedItem;

  ItemSelector(this.selectedItem);

  void setSelectedItem(int index) {
    selectedItem = index;
    notifyListeners();
  }
}

class HomeWidget extends StatelessWidget {
  final titles = [
    "Agenda",
    "Problem statements",
    "Sponsors",
    "Organising Committee",
    "About"
  ];
  final List<Widget> body = [
    Center(child: AgendaWidget()),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Some fake info!"),
          Text(
            "The makeathon team says bye!",
          ),
        ],
      ),
    ),
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
  ];

  @override
  Widget build(BuildContext context) {
    final itemSelector = Provider.of<ItemSelector>(context);
    return Scaffold(
      backgroundColor: Color(0xff1d1f3e),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1d1f3e),
        title: Text(
          titles[itemSelector.selectedItem],
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: body[itemSelector.selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff69f0ae),
        backgroundColor: Color(0xff262845),
        type: BottomNavigationBarType.fixed,
        currentIndex: itemSelector.selectedItem,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text("Agenda"),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.lightbulbOn),
            title: Text("Themes"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            title: Text("Sponsors"),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountSupervisor),
            title: Text("Organisers"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            title: Text("Info"),
          ),
        ],
        onTap: (index) => itemSelector.setSelectedItem(index),
      ),
    );
  }
}
