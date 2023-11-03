import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
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
            child: Stack(
              children: [
                Positioned(
                  left: 55,
                  top: 395,
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
                  left: 154,
                  top: 100,
                  child: Image.asset(
                    'images/Group_57.png', // Sesuaikan dengan path gambar Anda
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 55,
                  top: 498,
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
                  top: 85,
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
                  left: 147,
                  top: 195,
                  child: Text(
                    'Buat akun',
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
                  top: 292,
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
                        hintText: 'Nama...',
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
                  top: 419,
                  child: Text(
                    'Email...',
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
                  left: 83,
                  top: 522,
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
                  top: 224,
                  child: SizedBox(
                    width: 242,
                    height: 36,
                    child: Text(
                      'Silahkan daftar akun kamu untuk\nmelanjutkan masuk ke aplikasi.',
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
                  top: 604,
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
                          left: 115.61,
                          top: 23,
                          child: Text(
                            'Daftar',
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
                  left: 109,
                  top: 703,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Sudah punya akun? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Login ',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
