import 'package:flutter/material.dart';
import 'package:widget_advanced/pages/c_button.dart';
import 'package:widget_advanced/pages/decoration_gradient.dart';
import 'package:widget_advanced/pages/fancy_bottom_navigation_page.dart';
import 'package:widget_advanced/pages/gesture_detector_page.dart';
import 'package:widget_advanced/pages/sliver_app_bar_page.dart';
import 'package:widget_advanced/pages/speed_dial_page.dart';
import 'package:widget_advanced/pages/textfield_page.dart';
import 'package:widget_advanced/pages/textform_field_page.dart';
import 'package:widget_advanced/tasks/task_one.dart';
import 'package:widget_advanced/tasks/task_three.dart';
import 'package:widget_advanced/tasks/task_two.dart';

import 'navigation_rail_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Advanced"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, DecorationGradient.id);
              },
              child: Text("Gradient and Decoration"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, CButton.id);
              },
              child: Text("Customized Button"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, GesturePage.id);
              },
              child: Text("Gesture Detector Button"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, TextFieldPage.id);
              },
              child: Text("Text Field"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, TextFormFieldPage.id);
              },
              child: Text("Text Form Field"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, SpeedDialPage.id);
              },
              child: Text("Speed Dial"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, FancyNavigationPage.id);
              },
              child: Text("Fancy Navigation"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, SliverAppPage.id);
              },
              child: Text("Sliver App Page"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, NavigationRailPage.id);
              },
              child: Text("Navigation Rail Page"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, TaskOne.id);
              },
              child: Text("Task 1"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, TaskTwo.id);
              },
              child: Text("Task 2"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, TaskThree.id);
              },
              child: Text("Task 3"),
            ),

          ],
        ),
      ),
    );

  }
}
