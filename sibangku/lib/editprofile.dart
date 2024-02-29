
import 'package:flutter/material.dart';


class EditProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 83,
                    top: 59,
                    child: Text(
                      'Edit Profil',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.only(
                      top: 56,
                      left: 40,
                    ),
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Positioned(
                    left: 55,
                    top: 591,
                    child: Container(
                      width: 151,
                      height: 64,
                      decoration: ShapeDecoration(
                        color: Color(0xFF468F2B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 102,
                    top: 613,
                    child: Text(
                      'Simpan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 55,
                    top: 160,
                    child: Container(
                      width: 121,
                      height: 121,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/pp.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: CircleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 55,
                    top: 118,
                    child: Text(
                      'Foto Profil',
                      style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 63,
                    top: 300,
                    child: Text(
                      'Nama',
                      style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 63,
                    top: 421,
                    child: Text(
                      'Nama Toko',
                      style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 204,
                    top: 211,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/edit.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 55,
                    top: 325,
                    child: Container(
                      width: 280,
                      height: 67,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFAAAAAA)),
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 349,
                    child: Text(
                      'Muhammad Kenzo ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 55,
                    top: 444,
                    child: Container(
                      width: 280,
                      height: 67,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFAAAAAA)),
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 468,
                    child: Text(
                      'Toko Berkah',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
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
