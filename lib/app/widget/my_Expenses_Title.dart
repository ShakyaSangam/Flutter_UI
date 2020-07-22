import 'package:flutter/material.dart';

Widget myExpensesTitle(BuildContext context, Size size) {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 360) {
        return Card(
          elevation: 0.2,
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Container(
            width: size.width,
            height: 200,
            child: Column(
              children: [
                // * top design
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
                    IconButton(icon: Icon(Icons.menu), onPressed: null),
                  ],
                ),

                Container(
                  child: ListTile(
                    title: Text(
                      "My Expenses",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.6),
                    ),
                    subtitle: Text(
                      "Summary (Private)",
                      style: TextStyle(
                          color: Theme.of(context).secondaryHeaderColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 11),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 10, bottom: 5),
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.calendar_today,
                          size: 13,
                          color: Colors.blueGrey.shade300,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: size.width,
                          height: 70,
                          child: ListTile(
                            title: Text(
                              "07 Feb, 2019",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                            subtitle: Text("18% more than last month",
                                style: TextStyle(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      } else if (constraints.maxWidth <= 412) {
        return Card(
          elevation: 0.2,
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Container(
            width: size.width,
            height: 200,
            child: Column(
              children: [
                // * top design
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
                    IconButton(icon: Icon(Icons.menu), onPressed: null),
                  ],
                ),

                Container(
                  child: ListTile(
                    title: Text(
                      "My Expenses",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    subtitle: Text(
                      "Summary (Private)",
                      style: TextStyle(
                          color: Theme.of(context).secondaryHeaderColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.calendar_today,
                          size: 15,
                          color: Colors.blueGrey.shade300,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: size.width,
                          height: 70,
                          child: ListTile(
                            title: Text(
                              "07 Feb, 2019",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            subtitle: Text("18% more than last month",
                                style: TextStyle(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    },
  );
}
