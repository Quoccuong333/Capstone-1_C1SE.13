import 'package:flutter/material.dart';

class SportsFieldDetails extends StatelessWidget {
  const SportsFieldDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 250,
                width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/sport_best/SanCamPha.jpg"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
