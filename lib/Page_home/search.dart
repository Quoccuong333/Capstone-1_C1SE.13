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
                  child: Text(
                    "Sports Fields",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Tab(
                  child: Text(
                    "Events",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Tab(
                  child: Text(
                    "Team ",
                    style: TextStyle(fontSize: 17),
                  ),
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
