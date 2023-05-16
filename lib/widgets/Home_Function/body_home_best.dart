import 'package:flutter/material.dart';

class BodyHomeBest extends StatelessWidget {
  const BodyHomeBest ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sân Thể Thao Tốt Nhất",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i < 11; i++)
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 8,
                    )
                  ]
                ),

                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/san/hinh_$i.jpg',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tên sân 0$i',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Địa chỉ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}