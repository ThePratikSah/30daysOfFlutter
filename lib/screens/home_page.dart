import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:learning/models/catelog.dart';
import 'package:learning/widgets/drawer.dart';
import 'package:learning/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var dataJson = await rootBundle.loadString("assets/files/data.json");
    var decodedData = jsonDecode(dataJson);
    var productsData = decodedData["products"];
    print(productsData);
  }

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
