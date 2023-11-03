import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 4, color: Colors.white),
                  ),
                ),
                child: Stack(children: [
                  Positioned(
                    left: 125,
                    top: 150,
                    child: Image.asset(
                      'images/Group_57.png', // Sesuaikan dengan path gambar Anda
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    left: 55,
                    top: 496,
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
                    left: 162,
                    top: 183,
                    child: Container(
                      width: 66,
                      height: 89.29,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 16.50,
                            top: 0,
                            child: Container(
                              width: 37.39,
                              height: 76.65,
                              child: Stack(children: []),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 29.81,
                            child: Container(
                              width: 66,
                              height: 59.49,
                              child: Stack(children: []),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 116,
                    top: 293,
                    child: Text(
                      'Selamat datang!',
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
                    left: 55,
                    top: 393,
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
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(15.0, 23.0, 15.0, 15.0),
                          hintText: 'Email...',
                          hintStyle: TextStyle(
                            color: Color(0xFFCACACA),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 83,
                    top: 520,
                    child: Text(
                      'Password...',
                      style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 74,
                    top: 322,
                    child: SizedBox(
                      width: 242,
                      height: 36,
                      child: Text(
                        'Silahkan Login untuk melanjutkan\nmasuk ke aplikasi',
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
                  ),
                  Positioned(
                    left: 55,
                    top: 622,
                    child: Container(
                      width: 280,
                      height: 67,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
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
                          Positioned(
                            left: 118.61,
                            top: 23,
                            child: Text(
                              'Login',
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 710,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Belum punya akun? ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'Daftar di sini!',
                            style: TextStyle(
                              color: Color(0xFF468F2B),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]))),
      ),
    );
  }
}
