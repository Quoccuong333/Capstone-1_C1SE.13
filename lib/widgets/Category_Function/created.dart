import 'package:flutter/material.dart';
import 'package:sports_field_booking_application/widgets/widgets.dart';

class Created extends StatefulWidget {
  const Created({Key? key}) : super(key: key);

  @override
  State<Created> createState() => _CreatedState();
}

class _CreatedState extends State<Created> {
  Color _cursorColor = Colors.grey;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                    child: Text(
                      'Create own sports field',
                      style: TextStyle(fontSize: 20),
                    ),
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
                        MaterialPageRoute(builder: (context) => ButtonCreateOwnSportsField()),
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
