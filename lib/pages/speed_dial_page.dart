import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class SpeedDialPage extends StatefulWidget {
  const SpeedDialPage({Key? key}) : super(key: key);

  static const String id = "speed_dial";

  @override
  _SpeedDialPageState createState() => _SpeedDialPageState();
}

class _SpeedDialPageState extends State<SpeedDialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speed Dial"),
      ),
      body: Container(
        // color: Colors.yellowAccent,
        child: Center(
          child: Text("There is Speed Dial Page"),
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: ()=>print("Open Speed Dial"),
        onClose: ()=>print("Close Speed Dial"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.accessibility,color: Colors.white,),
            label: "First",
            backgroundColor: Colors.red,
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print("First Child")
          ),
          SpeedDialChild(
            child: Icon(Icons.brush, color: Colors.white,),
            label: "Second",
            backgroundColor: Colors.blue,
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: ()=> print("Second Child")
          ),
          SpeedDialChild(
            child: Icon(Icons.keyboard_voice, color: Colors.white,),
            label: "Third",
            backgroundColor: Colors.green,
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: ()=>print("Third Child")
          )
        ],
      )
    );
  }
}
