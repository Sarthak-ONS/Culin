import 'dart:convert';

import 'package:culin/Models/items_list.dart';
import 'package:culin/Models/recipe_model.dart';
import 'package:culin/Provider/filterprovider.dart';
import 'package:culin/Services/request_helper.dart';
import 'package:flutter/cupertino.dart';
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
      backgroundColor: Colors.black,
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
        backgroundColor: Colors.black12,
        title: ClipOval(
          child: Image.asset(
            "Assets/Images/Logo.jpg",
            width: 55,
            height: 55,
          ),
        ),
        bottom: PreferredSize(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              HomeScreenFilterWidget(
                title: "Cusines",
              ),
              HomeScreenFilterWidget(
                title: "Wines",
              ),
              HomeScreenFilterWidget(
                title: "Meal Planning",
              ),
            ],
          ),
          preferredSize: const Size(double.infinity, 50),
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
        children: const [
          RecipeOfTheDay(),
          SizedBox(
            height: 15,
          ),
          HomePageWidgetCategorizedContainer(
            title: "Trending",
            image: "2",
          ),
          HomePageWidgetCategorizedContainer(
            title: "Recommended",
            image: "1",
          ),
          HomePageWidgetCategorizedContainer(
            title: "Sweet",
            image: "3",
          ),
        ],
      ),
    );
  }
}

class HomePageWidgetCategorizedContainer extends StatelessWidget {
  const HomePageWidgetCategorizedContainer({Key? key, this.image, this.title})
      : super(key: key);

  final String? title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 235,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 150,
            padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5),
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("Assets/Images/$image.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 150,
                width: 130,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RecipeOfTheDay extends StatelessWidget {
  const RecipeOfTheDay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Recipe Of The Day
      width: MediaQuery.of(context).size.width,
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "Assets/Images/4.jpeg",
            ),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'La Casel Da Rapel',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Watch Recipe',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 15,
            top: 15,
            child: Icon(
              Icons.star,
              color: Colors.white,
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
        child: Row(
          children: [
            Text(
              title!,
              style: const TextStyle(color: Colors.white),
            ),
            const Icon(
              Icons.arrow_downward_sharp,
              size: 15,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
