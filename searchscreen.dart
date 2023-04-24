import 'dart:ui';

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Sportbok"),
              centerTitle: true,
              automaticallyImplyLeading: false,
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: "Sports Fields",
                  ),
                  Tab(
                    text: "Events",
                  ),
                  Tab(
                    text: "Team ",
                  ),
                ],
              ),
            ),
            body: TabBarView(children: [
              //code cho phan tim san bong
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text('Select Field: '),
                            ),
                            Container(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                  )),
                            ),
                            Container(
                              child: Text('Select size: '),
                            ),
                            Container(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Field/Location',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                  //Nhap dia diem
                  Row(
                    children: [
                      Icon(Icons.search),
                      Text(
                        'Enter your location',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  //Chon ngay gio
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Date and Time',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.calendar_month,
                              )),
                        ),
                        Container(
                          child: Text('Choose date '),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Clear Filter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 15)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Check availability",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 15)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),

              //phan code cho event
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text('Select Field: '),
                            ),
                            Container(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                  )),
                            ),
                            Container(
                              child: Text('Select size: '),
                            ),
                            Container(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Search event',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                  //Nhap dia diem
                  Row(
                    children: [
                      Icon(Icons.search),
                      Text(
                        'Enter your location',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  //Chon ngay gio
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Date and Time',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.calendar_month,
                              )),
                        ),
                        Container(
                          child: Text('Choose date '),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Clear Filter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 15)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Check availability",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 15)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ]),
          )),
    );
  }
}
