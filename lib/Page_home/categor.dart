import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Category extends StatelessWidget {
  const Category({super.key});

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
                    text: "Created",
                  ),
                  Tab(
                    text: "Participated",
                  ),
                  Tab(
                    text: "Finished",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Created(),
                Container(),
                Container(),
              ]
            ),
          ),
      ),
    );
  }
}
