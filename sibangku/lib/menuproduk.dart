import 'package:flutter/material.dart';

class menuproduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 95),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              transform: Matrix4.translationValues(0, -8, 0),
              width: 321,
              height: 44,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 265,
                        height: 44,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFC5C5C5)),
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 80,
                        top: 16,
                        child: Text(
                          'Cari produk mu di sini...',
                          style: TextStyle(
                            color: Color(0xFF878787),
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Color(0xFF468F2B),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 13,
                        top: 15,
                        child: Container(
                          width: 18,
                          height: 17,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/filter.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
