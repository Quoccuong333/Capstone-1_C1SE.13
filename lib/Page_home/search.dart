import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Search extends StatefulWidget {
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: appbar(),
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
          body: TabBarView(
              children: [
                //code tim san bong
                SearchField(),
                //code event
                SearchEvent(),
                //code đội
                SearchTeam(),
              ]
          ),
        ),
      ),
    );
  }
}
