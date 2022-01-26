import 'package:flutter/material.dart';
class TextFieldPage extends StatefulWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  static const String id = "text_field_page";

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(25)
              ),
              child: const TextField(
                style: TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.phone_android, color: Colors.grey,)
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
