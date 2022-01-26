import 'package:flutter/material.dart';

class TextFormFieldPage extends StatefulWidget {
  const TextFormFieldPage({Key? key}) : super(key: key);

  static const String id = "form_field_page";

  @override
  _TextFormFieldPageState createState() => _TextFormFieldPageState();
}

class _TextFormFieldPageState extends State<TextFormFieldPage> {
  final _formKey = GlobalKey<FormState>();
  String ?_email, _password;

  _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("Muvaffaqiyatli kirildi");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form Field"),
      ),
      body: Form(

        key: _formKey,

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(label: Text("Email")),
                validator: (input) =>
                (input != null && !input.contains("@")) ? "Emailni xato kiritdingiz" : null,
                onSaved: (input) => _email = input!,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                decoration: const InputDecoration(label: Text("Password")),
                validator: (input) =>
                  (input != null && input.length < 6) ? "Belgilar soni yetarli emas" : null,
                onSaved: (input) => _password = input!,
                obscureText: true,
              ),
            ),
            FlatButton(
              onPressed: _doSignIn,
              child:Text("Sign In"),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
