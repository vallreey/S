import 'package:flutter/material.dart';
import 'package:SiKarung/LoginPage.dart';
import 'package:SiKarung/editprofile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.translate(
          offset: Offset(0, -70),
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
              SizedBox(height: 20), // Jarak 10px antara teks dan gambar
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
              SizedBox(height: 35), // Jarak 10px antara gambar dan teks
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
                        '6',
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
              Container(
                margin: EdgeInsets.only(top: 50, left: 40),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfil()),
                      );
                    },
                  child: Row(
                    children: [
                      Image.asset(
                        'images/edit.png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Edit Profil',
                        style: TextStyle(
                          color: Color(0xF2235211),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                width: 390,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFE2E2E2),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 40),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Konfirmasi"),
                          content: Text("Apakah anda yakin akan Log Out dari akun?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false); // Tidak
                              },
                              child: Text("Tidak"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true); // Ya
                              },
                              child: Text("Ya"),
                            ),
                          ],
                        );
                      },
                    ).then((value) {
                      if (value == true) {
                        // Jika pengguna memilih Ya, arahkan ke halaman LoginPage.dart
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'images/Log_Out.png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Keluar',
                        style: TextStyle(
                          color: Color(0x9BF31313),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                width: 390,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFE2E2E2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
