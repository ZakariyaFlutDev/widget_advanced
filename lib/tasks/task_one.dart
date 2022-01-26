import 'package:flutter/material.dart';
class TaskOne extends StatefulWidget {
  const TaskOne({Key? key}) : super(key: key);

  static const String id = "task_one";

  @override
  _TaskOneState createState() => _TaskOneState();
}

class _TaskOneState extends State<TaskOne> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task One"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/image1.jpeg"),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.2),
                      ]
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Beatifual Waterflow", style: TextStyle(color: Colors.white, fontSize: 32),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/ic_image1.jpeg"),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.2),
                          ]
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Beatifual Bird", style: TextStyle(color: Colors.white, fontSize: 32),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/ic_image2.jpeg"),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.2),
                          ]
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Beatifual Birds", style: TextStyle(color: Colors.white, fontSize: 32),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/ic_image3.jpeg"),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.2),
                          ]
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Beatifual Waterflow", style: TextStyle(color: Colors.white, fontSize: 32),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/image1.jpeg"),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.2),
                          ]
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Beatifual Waterflow", style: TextStyle(color: Colors.white, fontSize: 32),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
