import 'dart:async';
import 'package:flutter/material.dart';

class BodyHomeSlide extends StatefulWidget {
  const BodyHomeSlide({Key? key}) : super(key: key);

  @override
  State<BodyHomeSlide> createState() => _BodyHomeSlideState();
}
class _BodyHomeSlideState extends State<BodyHomeSlide> {
  final List<String> imageList = [
    'assets/san/hinh_1.jpg',
    'assets/san/hinh_2.jpg',
    'assets/san/hinh_3.jpg',
    'assets/san/hinh_5.jpg',
  ];

  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      _nextImage();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _nextImage() {
    final newIndex = (_currentPage + 1) % imageList.length;
    setState(() {
      _currentPage = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: imageList.length,
                controller: PageController(
                  initialPage: _currentPage,
                  viewportFraction: 1.0, //mỗi trang trong PageView chiếm 100% chiều rộng của màn hình
                ),
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imageList[_currentPage],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
