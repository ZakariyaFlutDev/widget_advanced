import 'package:flutter/material.dart';
import 'package:widget_advanced/tasks/task_two.dart';
class TaskThree extends StatefulWidget {
  const TaskThree({Key? key}) : super(key: key);

  static const String id ="task_three";

  @override
  _TaskThreeState createState() => _TaskThreeState();
}

class _TaskThreeState extends State<TaskThree> {

  final _formKey = GlobalKey<FormState>();
  late String _name, _email, _password;

  _doSignUp(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print("Sign Up");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Instagram", style: TextStyle(fontSize: 40),),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(label: Text("Name")),
                  validator: (input) => (input != null && input.isEmpty) ? "Ism bo'sh bo'lmaydi" : null,
                  onSaved: (input) => _name = input!,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(label: Text("Email")),
                  validator: (input) => (input!=null && !input.contains("@")) ? "Email xato kiritildi" : null,
                  onSaved: (input) => _email = input!,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(label: Text("Password")),
                  validator: (pw) => (pw != null && pw.length<6) ? "Parol xato kiritildi" : null,
                  onSaved: (pw) => _password = pw!,
                  obscureText: true,
                ),
              ),
              SizedBox(height: 50,),

              GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 50,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 16),),
                  ),
                ),
                onTap: _doSignUp,
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account ? "),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: Text("Sign In", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    onTap: (){
                      Navigator.pushNamed(context, TaskTwo.id);
                    },
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
