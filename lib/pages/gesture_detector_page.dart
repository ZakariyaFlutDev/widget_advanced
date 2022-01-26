import 'package:flutter/material.dart';
import 'package:widget_advanced/pages/home_page.dart';
class GesturePage extends StatefulWidget {
  const GesturePage({Key? key}) : super(key: key);

  static const String id = "gesture_detector_page";

  @override
  _GesturePageState createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gesture Detector"),
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.pushReplacementNamed(context, HomePage.id);
          print("Clicked GT");
        },
        child: Container(
          color: Colors.red,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Center(
            child: Text("Clicked for return Main Page"),
          ),
        ),
      )
    );
  }
}
