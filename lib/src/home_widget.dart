import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makeathon/src/agenda/agenda_item.dart';
import 'package:makeathon/src/agenda/agenda_page.dart';
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
  final titles = ["Agenda", "Problem statements", "Info"];
  final List<Widget> body = [
    Center(
        child: AgendaWidget()),
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
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          titles[itemSelector.selectedItem],
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
//        centerTitle: true,
      ),
      body: body[itemSelector.selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurpleAccent,
        type: BottomNavigationBarType.shifting,
        currentIndex: itemSelector.selectedItem,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text("Agenda"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline),
              title: Text("Problem Statements")
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
