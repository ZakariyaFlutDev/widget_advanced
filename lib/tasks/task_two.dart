import 'package:flutter/material.dart';
import 'package:widget_advanced/tasks/task_three.dart';
class TaskTwo extends StatefulWidget {
  const TaskTwo({Key? key}) : super(key: key);

  static const String id = "task_two";

  @override
  _TaskTwoState createState() => _TaskTwoState();
}

class _TaskTwoState extends State<TaskTwo> {

  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  _doSignIn(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print("Sign In");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
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
                padding: EdgeInsets.symmetric(horizontal:20),
                child: TextFormField(
                  decoration: InputDecoration(label: Text("Email")),
                  validator: (value) => (value !=null && !value.contains("@")) ? "Emailni xato kiritdingiz" : null,
                  onSaved: (value) => _email = value!,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(label: Text("Password")),
                  validator: (value) => (value != null && value.length <6) ? "Paroldagi belgilar soni kam" : null,
                  onSaved: (value) => _password = value!,
                  obscureText: true,
                ),
              ),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: _doSignIn,
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.blue,
                  child: Center(
                    child: Text("Log In", style: TextStyle(color: Colors.white, fontSize: 16),),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ?"),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, TaskThree.id);
                    },
                    child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
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
