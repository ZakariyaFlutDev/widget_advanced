import 'package:flutter/material.dart';

class CButton extends StatefulWidget {
  const CButton({Key? key}) : super(key: key);

  static const String id = "C_button";

  @override
  _CButtonState createState() => _CButtonState();
}

class _CButtonState extends State<CButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customized Button"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 50,
          child: FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {},
            child: Text("Sign In"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ),
    );
  }
}
