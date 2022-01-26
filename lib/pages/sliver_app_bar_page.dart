import 'package:flutter/material.dart';
class SliverAppPage extends StatefulWidget {
  const SliverAppPage({Key? key}) : super(key: key);

  static const String id = "sliver_app_page";

  @override
  _SliverAppPageState createState() => _SliverAppPageState();
}

class _SliverAppPageState extends State<SliverAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.grey,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Sliver App Bar"),
              background: Image(image: AssetImage("assets/images/image1.jpeg"),fit: BoxFit.cover,),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(_buildList(30))),
        ],
      ),
    );
  }
  List<Widget> _buildList(int count) {
    List<Widget> items =  [];
    for(int i=0;i<count;i++){
      items.add(_itemList(i));
    }
    return items;
  }

  Widget _itemList(int i){
    return Container(
      height: 50,
      child: Center(
        child: Text("Item : ${i.toString()}"),
      ),
    );
  }
}

