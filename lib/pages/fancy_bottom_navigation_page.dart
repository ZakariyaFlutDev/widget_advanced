import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class FancyNavigationPage extends StatefulWidget {
  const FancyNavigationPage({Key? key}) : super(key: key);

  static String id = "fancy_navigation_page";

  @override
  _FancyNavigationPageState createState() => _FancyNavigationPageState();
}

class _FancyNavigationPageState extends State<FancyNavigationPage> {
  PageController _pageController = PageController();
  int selectedPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fancy Bottom Navigation"),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            selectedPage = index;
          });
          // print(selectedPage);
        },
        children: [
          Container(
            color: Colors.redAccent,
            child: Center(
              child: Text("Home Page"),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text("Search Page"),
            ),
          ),
          Container(
            color: Colors.purple,
            child: Center(
              child: Text("First Page"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: FancyBottomNavigation(
        barBackgroundColor: Colors.yellowAccent,
        circleColor: Colors.greenAccent,
        activeIconColor: Colors.cyan,
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
          ),
          TabData(
              iconData: Icons.search,
              title: "Search",
          ),
          TabData(
              iconData: Icons.shopping_cart_sharp,
              title: "Basket",
          ),
        ],
        initialSelection: selectedPage,
        onTabChangedListener: (position) {
          setState(() {
            selectedPage = position;
            _pageController.animateToPage(position,
                duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}
