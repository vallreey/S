import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.translate(
          offset: Offset(0, -150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                'Profil',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xF2235211),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 40), // Jarak 10px antara teks dan gambar
              Container(
                width: 91,
                height: 91,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFDBDBDB),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x3F000000),
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image(
                    image: AssetImage('images/pp.png'),
                    width: 91,
                    height: 91,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 40), // Jarak 10px antara gambar dan teks
              Text(
                'Muhammad Kenzo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xF2235211),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(
                  height:
                      5), // Jarak 5px antara teks 'Muhammad Kenzo' dan 'Toko Berkah'
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Toko Berkah',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xF2818181),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                  height:
                      30), // Jarak 30px antara teks 'Toko Berkah' dan Container
              Container(
                width: 316,
                height: 48,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 156,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE3E3E3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 160,
                      top: 0,
                      child: Container(
                        width: 156,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE3E3E3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 7,
                      child: Text(
                        'Jumlah Produk',
                        style: TextStyle(
                          color: Color(0xFF235312),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 175,
                      top: 7,
                      child: Text(
                        'Terjual',
                        style: TextStyle(
                          color: Color(0xFF235312),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 21,
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 175,
                      top: 21,
                      child: Text(
                        '500',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
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
      ),
    );
  }
}
