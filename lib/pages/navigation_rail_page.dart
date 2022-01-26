import 'package:flutter/material.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({Key? key}) : super(key: key);

  static const String id = "navigation_rail_page";

  @override
  _NavigationRailPageState createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text("Like"),
              ),
              NavigationRailDestination(icon: Icon(Icons.bookmark_border),
                  selectedIcon: Icon(Icons.book),
                  label: Text("Books"),
              ),
              NavigationRailDestination(icon: Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star),
                  label: Text("Star"),
              ),
            ],
          ),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(
              child: Text("Selected Index : $_selectedIndex"),
            ),
          )
        ],
      ),
    );
  }
}
