import 'package:flutter/material.dart';
import '../../Page_home/page_home.dart';
import '../Function/appbar.dart';

class ButtonCreateNewTeam extends StatefulWidget {
  const ButtonCreateNewTeam({Key? key}) : super(key: key);

  @override
  State<ButtonCreateNewTeam> createState() => _ButtonCreateNewTeamState();
}

class _ButtonCreateNewTeamState extends State<ButtonCreateNewTeam> {
Color _cursorColor = Colors.grey;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center, // can giữa các widget con
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                height: size.height * 0.08,
                width: size.width * 0.91,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    child: Text('Create New Team', style: TextStyle(fontSize: 23)),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateFootballTeam()),
                      );
                    },
                  ),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
