import 'package:flutter/material.dart';
class DecorationGradient extends StatefulWidget {
  const DecorationGradient({Key? key}) : super(key: key);

  static const String id = "decoration_gradient";
  
  @override
  _DecorationGradientState createState() => _DecorationGradientState();
}

class _DecorationGradientState extends State<DecorationGradient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Decoration and Gradient"),
      ),
      body: Center(
        child: Container(
          height: 240,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage("assets/images/ic_image3.jpeg"),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                // end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.3),
                  Colors.black.withOpacity(.2),
                ]
              )
            ),
          ),
        ),
      ),
    );
  }
}
