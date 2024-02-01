import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 95),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat Pagi, Kenzo 👋',
                      style: TextStyle(
                        color: Color(0xFF235211),
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    Text(
                      'Mulai analisis keuntungan toko mu sekarang!',
                      style: TextStyle(
                        color: Color(0xFF235312),
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 53),
                SizedBox(
                  width: 52,
                  height: 52,
                  child: Container(
                    transform: Matrix4.translationValues(0, -8, 0),
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/TOS.gif'),
                        fit: BoxFit.fill,
                      ),
                      shape: CircleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3), // Jarak antara teks dan Container
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 80), // Menambahkan margin top dan menggeser ke kiri
                  width: 156,
                  height: 48,
                  padding: EdgeInsets.only(left: 10), // Menggeser teks ke kiri
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 10,
                        offset: Offset(4, 5),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
                    children: [
                      Text(
                        'Produk Terjual',
                        style: TextStyle(
                          color: Color(0xFF7F7F7F),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      Text(
                        '500',
                        style: TextStyle(
                          color: Color(0xFF468F2B),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 80), // Menambahkan margin top dan menggeser ke kanan
                  width: 156,
                  height: 48,
                  padding: EdgeInsets.only(left: 10), // Menggeser teks ke kiri
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 10,
                        offset: Offset(4, 5),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
                    children: [
                      Text(
                        'Profit',
                        style: TextStyle(
                          color: Color(0xFF7F7F7F),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      Text(
                        'Rp10.000.000',
                        style: TextStyle(
                          color: Color(0xFF468F2B),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10), // Jarak antara Container dan Stack
            Container(
              transform: Matrix4.translationValues(18, 130, 0),
              width: 301,
              height: 13,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 27,
                      height: 13,
                      child: Text(
                        'Senin',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 9,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 42,
                    top: 0,
                    child: SizedBox(
                      width: 31,
                      height: 13,
                      child: Text(
                        'Selasa',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 9,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 0,
                    child: SizedBox(
                      width: 26,
                      height: 13,
                      child: Text(
                        'Rabu',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 9,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 125,
                    top: 0,
                    child: SizedBox(
                      width: 30,
                      height: 13,
                      child: Text(
                        'Kamis',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 9,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 172,
                    top: 0,
                    child: SizedBox(
                      width: 30,
                      height: 13,
                      child: Text(
                        'Jumat',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 9,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 217,
                    top: 0,
                    child: SizedBox(
                      width: 30,
                      height: 13,
                      child: Text(
                        'Sabtu',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 9,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 260,
                    top: 0,
                    child: SizedBox(
                      width: 41,
                      height: 13,
                      child: Text(
                        'Minggu',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 9,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, 160, 0),
              width: 500,
              height: 19,
              child: Stack(
                children: [
                  Positioned(
                    left: 8,
                    top: 0,
                    child: Text(
                      'Produk Terlaris',
                      style: TextStyle(
                        color: Color(0xFF235312),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 260,
                    top: 5,
                    child: Text(
                      'Lihat Semua',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF235312),
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, 180, 0),
              width: 324,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 324,
                      height: 70,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF7F6F6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 20,
                            offset: Offset(0, 5),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 68,
                    top: 8,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 48,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFD7D7D7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 11,
                    child: Text(
                      'Loli Dragon (Ukuran Sachet)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 26,
                    child: Text(
                      'Rp1.241.000',
                      style: TextStyle(
                        color: Color(0xFF468F2B),
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 41,
                    child: Text(
                      '100x Terjual',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 14,
                    child: Container(
                      width: 30,
                      height: 42,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/wa.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 280,
                    top: 19,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 289,
                    top: 24,
                    child: Text(
                      '>',
                      style: TextStyle(
                        color: Color(0xFF3A841E),
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, 194, 0),
              width: 324,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 324,
                      height: 70,
                      decoration: ShapeDecoration(
                        color: Color(0xffededed),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 20,
                            offset: Offset(0, 5),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 68,
                    top: 8,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 48,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFD7D7D7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 11,
                    child: Text(
                      'Bronya riding',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 26,
                    child: Text(
                      'Rp241.000',
                      style: TextStyle(
                        color: Color(0xFF468F2B),
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 41,
                    child: Text(
                      '94x Terjual',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 14,
                    child: Container(
                      width: 30,
                      height: 42,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/onya.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 280,
                    top: 19,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 289,
                    top: 24,
                    child: Text(
                      '>',
                      style: TextStyle(
                        color: Color(0xFF3A841E),
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, 208, 0),
              width: 324,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 324,
                      height: 70,
                      decoration: ShapeDecoration(
                        color: Color(0xffededed),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 20,
                            offset: Offset(0, 5),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 68,
                    top: 8,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 48,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFD7D7D7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 11,
                    child: Text(
                      'Gorengan Rek 😂',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 26,
                    child: Text(
                      'Rp2.000',
                      style: TextStyle(
                        color: Color(0xFF468F2B),
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 41,
                    child: Text(
                      '89x Terjual',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 14,
                    child: Container(
                      width: 30,
                      height: 42,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/Gorengan.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 280,
                    top: 19,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 289,
                    top: 24,
                    child: Text(
                      '>',
                      style: TextStyle(
                        color: Color(0xFF3A841E),
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
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
