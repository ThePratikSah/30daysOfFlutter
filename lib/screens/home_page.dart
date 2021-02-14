import 'package:flutter/material.dart';
import 'package:learning/models/catelog.dart';
import 'package:learning/widgets/drawer.dart';
import 'package:learning/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(30, (index) => CatelogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer List"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
