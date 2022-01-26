import 'package:flutter/material.dart';
import 'package:widget_advanced/pages/c_button.dart';
import 'package:widget_advanced/pages/decoration_gradient.dart';
import 'package:widget_advanced/pages/fancy_bottom_navigation_page.dart';
import 'package:widget_advanced/pages/gesture_detector_page.dart';
import 'package:widget_advanced/pages/home_page.dart';
import 'package:widget_advanced/pages/navigation_rail_page.dart';
import 'package:widget_advanced/pages/sliver_app_bar_page.dart';
import 'package:widget_advanced/pages/speed_dial_page.dart';
import 'package:widget_advanced/pages/textfield_page.dart';
import 'package:widget_advanced/pages/textform_field_page.dart';
import 'package:widget_advanced/tasks/task_one.dart';
import 'package:widget_advanced/tasks/task_three.dart';
import 'package:widget_advanced/tasks/task_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id:(context) => HomePage(),
        DecorationGradient.id:(context) => DecorationGradient(),
        CButton.id:(context) => CButton(),
        GesturePage.id:(context) => GesturePage(),
        TextFieldPage.id:(context) => TextFieldPage(),
        TextFormFieldPage.id:(context) => TextFormFieldPage(),
        SpeedDialPage.id:(context) => SpeedDialPage(),
        FancyNavigationPage.id:(context) => FancyNavigationPage(),
        SliverAppPage.id:(context) => SliverAppPage(),
        NavigationRailPage.id:(context) => NavigationRailPage(),
        TaskOne.id:(context) => TaskOne(),
        TaskTwo.id:(context) => TaskTwo(),
        TaskThree.id:(context) => TaskThree(),

      },
    );
  }
}
