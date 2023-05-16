import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: appbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BodyHomeSlide(),
                    SizedBox(
                      height: 20,
                    ),
                    BodyHomeBest(),
                    SizedBox(
                      height: 20,
                    ),
                    BodyHomeNearest(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
