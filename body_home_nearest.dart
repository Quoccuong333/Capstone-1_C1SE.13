// import 'package:flutter/material.dart';

// class BodyHomeNearest extends StatelessWidget {
//   const BodyHomeNearest({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding( //Thêm Padding ở đây để tạo khoảng cách
//               padding: EdgeInsets.only(left: 10.0),
//               child: Text(
//                 "Sân Thể Thao Gần Nhất",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue,
//                 ),
//               ),
//             ),
//             GridView.count(
//               padding: EdgeInsets.symmetric(
//                 vertical: 20,
//                 horizontal: 10,
//               ),
//               crossAxisCount: 2,
//               childAspectRatio: 0.8,
//               shrinkWrap: true,
//               children: [
//                 for (int i = 1; i < 11; i++)
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 10),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           blurRadius: 8,
//                         )
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         InkWell(
//                           onTap: () {},
//                           child: Container(
//                             margin: EdgeInsets.all(10),
//                             child: Image.asset(
//                               'assets/san/hinh_$i.jpg',
//                               height: 130,
//                               width: 130,
//                             ),
//                           ),
//                         ),
//                         // Padding(
//                         //   padding: EdgeInsets.only(bottom: 8),
//                         //   child: Container(
//                         //     alignment: Alignment.centerLeft,
//                         //     child: Text(
//                         //       "Tên sân",
//                         //       style: TextStyle(
//                         //         fontSize: 22,
//                         //         fontWeight: FontWeight.bold,
//                         //         color: Color(0xff555555),
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//                         // Padding(
//                         //   padding: EdgeInsets.only(bottom: 8),
//                         //   child: Container(
//                         //     alignment: Alignment.centerLeft,
//                         //     child: Text(
//                         //       "Địa chỉ",
//                         //       style: TextStyle(
//                         //         fontSize: 14,
//                         //         fontWeight: FontWeight.bold,
//                         //         color: Color(0xff555555),
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//                       ],
//                     ),
//                   )
//               ],
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../detail/detail_best_ChiLang.dart';

class BodyHomeNearest extends StatelessWidget {
  const BodyHomeNearest({super.key});

  Widget SingalProducts1(BuildContext context) {
    return Container(
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
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailBestChiLang()),
                );
              },
              child: Image.asset(
                'assets/sport_best/SanChiLang.jpg',
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chi Lang Stadium',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '38 Ngo Gia Tu, Hai Chau I, Hai Chau, Da Nang, Vietnam',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.location_on,
                        size: 16.0,
                        color: Colors.grey,
                      )),
                      TextSpan(text: "1,3 km away from you")
                    ]),
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget SingalProducts2() {
    return Container(
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
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            // flex: 2,
            child: Image.asset(
              'assets/sport_best/SanTuDo.jpg',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Freedom Stadium',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Nguyen Cong Tru Street, Hue, Thua Thien Hue, Vietnam',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.location_on,
                        size: 16.0,
                        color: Colors.grey,
                      )),
                      TextSpan(text: "32 km away from you")
                    ]),
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget SingalProducts3() {
    return Container(
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
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            // flex: 2,
            child: Image.asset(
              'assets/sports_near/sant20.jpg',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'T20 Stadium',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'My Khe 4 Street, Phuoc My, Son Tra, Vietnam',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.location_on,
                        size: 16.0,
                        color: Colors.grey,
                      )),
                      TextSpan(text: "3,4 km away from you")
                    ]),
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget SingalProducts4() {
    return Container(
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
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            // flex: 2,
            child: Image.asset(
              'assets/sports_near/sandaihocthethao.jpg',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mini Club Dai Hoc The Duc The Thao Stadium',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '44 Dung Sy Thanh Khe Street,Thanh Khe Dong, Thanh Khe, Da Nang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.location_on,
                        size: 16.0,
                        color: Colors.grey,
                      )),
                      TextSpan(text: "2 km away from you")
                    ]),
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget SingalProducts5() {
    return Container(
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
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            // flex: 2,
            child: Image.asset(
              'assets/sports_near/sanminianphuc.jpg',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Football Club An Phuc \nStadium',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Nguyen Huu Canh Street, Thuan Phuoc, Hai Chau, Vietnam',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.location_on,
                        size: 16.0,
                        color: Colors.grey,
                      )),
                      TextSpan(text: "2,3 km away from you")
                    ]),
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget SingalProducts6() {
    return Container(
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
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            // flex: 2,
            child: Image.asset(
              'assets/sports_near/chuyenviet.jpg',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chuyen Viet Stadium',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '98 Tieu La Street, Hoa Thuan Dong, Hai Chau, Da Nang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.location_on,
                        size: 16.0,
                        color: Colors.grey,
                      )),
                      TextSpan(text: "2,3 km away from you")
                    ]),
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              //Thêm Padding ở đây để tạo khoảng cách
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
                SingalProducts1(context),
                SingalProducts2(),
                SingalProducts3(),
                SingalProducts4(),
                SingalProducts5(),
                SingalProducts6(),

                // for (int i = 1; i < 11; i++)
                //   Container(
                //     padding: EdgeInsets.symmetric(horizontal: 10),
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.5),
                //           spreadRadius: 1,
                //           blurRadius: 8,
                //         )
                //       ],
                //     ),
                //     child: Column(
                //       children: [
                //         InkWell(
                //           onTap: () {},
                //           child: Container(
                //             margin: EdgeInsets.all(10),
                //             child: Image.asset(
                //               'assets/san/hinh_$i.jpg',
                //               height: 130,
                //               width: 130,
                //             ),
                //           ),
                //         ),
                //         // Padding(
                //         //   padding: EdgeInsets.only(bottom: 8),
                //         //   child: Container(
                //         //     alignment: Alignment.centerLeft,
                //         //     child: Text(
                //         //       "Tên sân",
                //         //       style: TextStyle(
                //         //         fontSize: 22,
                //         //         fontWeight: FontWeight.bold,
                //         //         color: Color(0xff555555),
                //         //       ),
                //         //     ),
                //         //   ),
                //         // ),
                //         // Padding(
                //         //   padding: EdgeInsets.only(bottom: 8),
                //         //   child: Container(
                //         //     alignment: Alignment.centerLeft,
                //         //     child: Text(
                //         //       "Địa chỉ",
                //         //       style: TextStyle(
                //         //         fontSize: 14,
                //         //         fontWeight: FontWeight.bold,
                //         //         color: Color(0xff555555),
                //         //       ),
                //         //     ),
                //         //   ),
                //         // ),
                //       ],
                //     ),
                //   )
              ],
            )
          ],
        ),
      ],
    );
  }
}
