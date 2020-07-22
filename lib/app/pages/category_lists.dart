import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  PageController _pageController;

  List<String> _categoryName = [
    "Education",
    "Nutrition",
    "Child",
    "Beauty & Care"
  ];

  Map<String, dynamic> _categoryList = {
    "Education": Icon(
      FontAwesomeIcons.graduationCap,
      color: Colors.yellow.shade300,
      size: 16,
    ),
    "Nutrition": Icon(
      Icons.fastfood,
      color: Colors.blue.shade300,
      size: 16,
    ),
    "Child": Icon(
      FontAwesomeIcons.babyCarriage,
      color: Colors.green,
      size: 16,
    ),
    "Beauty & Care": Icon(
      FontAwesomeIcons.female,
      color: Colors.orange,
      size: 16,
    )
  };

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCategoriesList(context),
        buildButton(context),
        buildIncomingExpenses(context),
        Container(
          height: 248,
          child: PageView.builder(
            itemCount: _categoryName.length,
            controller: _pageController,
            itemBuilder: (BuildContext context, int index) {
              return buildIncomingExpensesList(context, index);
            },
          ),
        ),
      ],
    );
  }

  LayoutBuilder buildIncomingExpensesList(BuildContext context, int index) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 360) {
          // return Text("360");
          return Container(
            width: MediaQuery.of(context).size.width / 1.3,
            padding: EdgeInsets.all(3),
            child: Card(
              margin: EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        _categoryList[_categoryName[index]],
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          _categoryName[index],
                          style: TextStyle(
                              color: Colors.deepOrange.shade300,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      title: Text(
                        "Dermal Softening",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      subtitle: Text(
                          "An effective antioxidant, protects the functionality of other vitamins, retains mmoisture and inhibits, skin asing.",
                          style: TextStyle(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      title: Text("Location",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                      subtitle: Text("498-300 NW 59th Ct, Miami",
                          style: TextStyle(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.shade400,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.elliptical(18, 18),
                              bottomRight: Radius.elliptical(18, 18))),
                      padding: EdgeInsets.all(3),
                      alignment: Alignment.center,
                      child: Text(
                        "CONFIRM 12.54 USD",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        } else if (constraints.maxWidth <= 412) {
          // return Text("asldkj");
          return Container(
            width: MediaQuery.of(context).size.width / 1.3,
            padding: EdgeInsets.all(3),
            child: Card(
              margin: EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        _categoryList[_categoryName[index]],
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          _categoryName[index],
                          style: TextStyle(
                              color: Colors.deepOrange.shade300,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      title: Text(
                        "Dermal Softening",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      subtitle: Text(
                          "An effective antioxidant, protects the functionality of other vitamins, retains mmoisture and inhibits, skin asing.",
                          style: TextStyle(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      title: Text("Location",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                      subtitle: Text("498-300 NW 59th Ct, Miami",
                          style: TextStyle(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.shade400,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.elliptical(18, 18),
                              bottomRight: Radius.elliptical(18, 18))),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text(
                        "CONFIRM 12.54 USD",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
      },
    );
  }

  Container buildIncomingExpenses(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2, bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 70,
              child: ListTile(
                title: Text("INCOMING EXPENSES",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
                subtitle: Text(
                  "12 total",
                  style: TextStyle(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  MaterialButton buildButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text(
        "MORE 🔻",
        style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
            fontWeight: FontWeight.w600,
            fontSize: 12),
      ),
    );
  }

  Wrap buildCategoriesList(BuildContext context) {
    return Wrap(
      children: _categoryName.map((e) {
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 360) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, left: 3.0, right: 3.0, bottom: 5.0),
                child: Container(
                  width: 155.0,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, -3), // changes position of shadow
                      ),
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 0.4,
                        blurRadius: 0.0,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      _categoryList[e], // category icon
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        e,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              );
            } else if (constraints.maxWidth <= 412) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, left: 3.0, right: 3.0, bottom: 5.0),
                child: Container(
                  width: 180.0,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, -3), // changes position of shadow
                      ),
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 0.4,
                        blurRadius: 0.0,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      _categoryList[e], // category icon
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        e,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        );
      }).toList(),
    );
  }
}
