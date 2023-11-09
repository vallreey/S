import 'package:flutter/material.dart';
import 'package:SiBangKu/LoginPage.dart';
import 'package:SiBangKu/RegisterPage.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: StartupPage(),
      ),
    );
  }
}


class StartupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 55,
                  top: 644,
                  child: Container(
                    width: 280,
                    height: 67,
                    child: Stack(
                      children: [
                        Positioned(
                        left: 0,
                        top: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterPage()),
                            );
                          },
                          child: Container(
                            width: 280,
                            height: 67,
                            decoration: ShapeDecoration(
                              color: Color(0xFF468F2B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ),
                        Positioned(
                          left: 93.61,
                          top: 23,
                          child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterPage()),
                            );
                          },
                          child: Text(
                            'Daftar Akun',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 55,
                  top: 563,
                  child: Container(
                    width: 280,
                    height: 67,
                    child: Stack(
                      children: [
                        Positioned(
                        left: 0,
                        top: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          },
                          child: Container(
                            width: 280,
                            height: 67,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1, 
                                  color: Color(0xFF468F2B),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ),
                        Positioned(
                          left: 116.82,
                          top: 24,
                          child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          },
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF468F2B),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w900,
                              height: 0,
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 115,
                  top: 158,
                  child: Image.asset(
                    'images/Group_57.png', // Sesuaikan dengan path gambar Anda
                    width: 150,
                    height: 180,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 88,
                  top: 376,
                  child: Text(
                    'Make Shopping Easier',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF468F2B),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 66,
                  top: 413,
                  child: Text(
                    'Buat transaksi toko mu lebih mudah,\n efisien, dan praktis hanya dengan\nsekali “Klik”',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF468F2B),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 126,
                  top: 167,
                  child: Container(
                    width: 138,
                    height: 186.71,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 34.50,
                          top: 0,
                          child: Container(
                            width: 78.19,
                            height: 160.26,
                            child: Stack(children: []),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 62.32,
                          child: Container(
                            width: 138,
                            height: 124.38,
                            child: Stack(children: []),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 225,
                  top: 147,
                  child: Container(
                    width: 95.36,
                    height: 75.83,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 13.87,
                          top: 0,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(0.25),
                            child: Container(
                              width: 95,
                              height: 57.15,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 7,
                                    top: 1,
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..translate(0.0, 0.0)
                                        ..rotateZ(0.25),
                                      child: Container(
                                        width: 85,
                                        height: 40,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF468F2B),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 6.39,
                                    top: 60.51,
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..translate(0.0, 0.0)
                                        ..rotateZ(-2.61),
                                      child: Container(
                                        width: 11.53,
                                        height: 30.89,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF468F2B),
                                          shape: StarBorder.polygon(sides: 3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 19.13,
                          top: 13,
                          child: SizedBox(
                            width: 72,
                            height: 17,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(0.55),
                              child: Text(
                                'Checkout',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
