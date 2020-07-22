import 'package:expenses/app/widget/my_Expenses_Title.dart';
import 'package:flutter/material.dart';

import 'category_Chart.dart';
import 'category_lists.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  List<Widget> _pages = [CategoryList() ,CategoryChart()];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // TODO expenses title
              myExpensesTitle(context, size),

              // TODo category
              // * list of category
              // 1 incoming expenses detail
              // 2 incoming expenses chart
              buildCategory(size, context),

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: _pages[selectedIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildCategory(Size size, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2, bottom: 10),
      width: size.width,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 70,
              child: ListTile(
                title: Text("CATEGORIES",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
                subtitle: Text("7 total",
              style: TextStyle(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selectedIndex == 0
                          ? Colors.orangeAccent.shade400
                          : Colors.transparent),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    icon: Icon(
                      Icons.list,
                      size: 18,
                      color: selectedIndex == 0 ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selectedIndex == 1
                          ? Colors.orangeAccent.shade400
                          : Colors.transparent),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    icon: Icon(
                      Icons.insert_chart,
                      size: 18,
                      color: selectedIndex == 1 ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
