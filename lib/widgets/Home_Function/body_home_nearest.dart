import 'package:flutter/material.dart';

class BodyHomeNearest extends StatelessWidget {
  const BodyHomeNearest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding( //Thêm Padding ở đây để tạo khoảng cách
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Sân Thể Thao Gần Nhất",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            GridView.count(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 11; i++)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 8,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/san/hinh_$i.jpg',
                              height: 130,
                              width: 130,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Tên sân",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff555555),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Địa chỉ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff555555),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ],
            )
          ],
        ),
      ],
    );
  }
}