import 'package:flutter/material.dart';
import 'package:SiKarung/checkout-detail.dart';
import 'package:SiKarung/menuproduk.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        image: AssetImage('images/pp.png'),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 20), // Menambahkan margin top dan menggeser ke kiri
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
                      top: 20), // Menambahkan margin top dan menggeser ke kanan
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
              margin: EdgeInsets.only(top: 20, left: 3),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double imageWidth = constraints.maxWidth *
                      1; // Sesuaikan dengan faktor yang diinginkan
                  double imageHeight = imageWidth *
                      (110 / 280); // Sesuaikan dengan aspek ratio gambar
                  return Container(
                    width: imageWidth,
                    height: imageHeight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/grafik.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              transform: Matrix4.translationValues(-3, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => menuproduk()),
                      );
                    },
                    child: Text(
                      'Lihat Semua',
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
              transform: Matrix4.translationValues(0, 60, 0),
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
                      'Lay’s BBQ (Medium)',
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
                      'Rp14.000',
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
                          image: AssetImage('images/wa.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 280,
                    top: 19,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutPage()),
                        );
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: CircleBorder(),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF3A841E),
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, 77, 0),
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
                      'Lay’s Classic Classique (Large)',
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
                      'Rp20.000',
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutPage()),
                        );
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: CircleBorder(),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF3A841E),
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, 90, 0),
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
                      'Sunrise Tofu',
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
                      'Rp11.000',
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutPage()),
                        );
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: CircleBorder(),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF3A841E),
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, 107, 0),
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
                      'Tomat Segar (1 gram)',
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
                      '10x Terjual',
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
                          image: AssetImage('images/tomat.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 280,
                    top: 19,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutPage()),
                        );
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: CircleBorder(),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF3A841E),
                          size: 18,
                        ),
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
