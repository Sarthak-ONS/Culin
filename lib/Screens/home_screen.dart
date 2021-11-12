import 'dart:convert';

import 'package:culin/Models/items_list.dart';
import 'package:culin/Models/recipe_model.dart';
import 'package:culin/Provider/filterprovider.dart';
import 'package:culin/Services/request_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String id = "homePage";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print(Provider.of<FilterProvider>(context, listen: false).parameters);
          // Provider.of<FilterProvider>(context, listen: false)
          //     .removeFilterFromMap();
          RequestHelper().makeRequest(context);
          //print(listOfCusines.length);
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: ClipOval(
          child: Image.asset(
            "Assets/Images/Logo.jpg",
            width: 55,
            height: 55,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                HomeScreenFilterWidget(
                  title: "Cusines",
                ),
                HomeScreenFilterWidget(
                  title: "Cusines",
                ),
                HomeScreenFilterWidget(
                  title: "Cusines",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreenFilterWidget extends StatelessWidget {
  const HomeScreenFilterWidget({Key? key, this.title, this.callback})
      : super(key: key);

  final String? title;
  final Function? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1,
            color: Colors.black38,
          ),
        ),
        child: Text(title!),
      ),
    );
  }
}
