import 'package:flutter/material.dart';
import 'package:learning/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 30 days of flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
