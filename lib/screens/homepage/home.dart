import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: Icon(Remix.arrow_go_back_fill),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
