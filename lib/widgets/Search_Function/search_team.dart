import 'package:flutter/material.dart';

class SearchTeam extends StatelessWidget {
  const SearchTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              'Search team',
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
    );
  }
}