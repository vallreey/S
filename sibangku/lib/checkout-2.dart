import 'package:flutter/material.dart';
import 'package:SiKarung/navbar-bot.dart';

class Checkout2 extends StatefulWidget {
  const Checkout2({Key? key}) : super(key: key);

  @override
  _Checkout2State createState() => _Checkout2State();
}

class _Checkout2State extends State<Checkout2>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _showQRCodeDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: 250,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/qrcode.png', // Tampilkan gambar QR Code
                  width: 190,
                  height: 190,
                ),
                SizedBox(height: 20),
                Text(
                  "Silahkan Scan Barcode Diatas Ini",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: 390,
                  height: 844,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 15,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavbarBot()),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        left: 54,
                        top: 25,
                        child: Text.rich(
                          TextSpan(
                            text: 'Checkout',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Positioned(
                        left: 54,
                        top: 108,
                        child: Image.asset(
                          'images/wa.png',
                          width: 46,
                          height: 95,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 54,
                        top: 228,
                        child: Text(
                          'Payment',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 54,
                        top: 280,
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Container(
                                    width: 247,
                                    height: 207,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 247,
                                            height: 207,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(9),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 81,
                                          top: 41,
                                          child: Container(
                                            width: 85,
                                            height: 85,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image:
                                                    AssetImage('images/V.png'),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 49,
                                          top: 149,
                                          child: Text(
                                            'Transaksi Berhasil!',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("OK"),
                                    ),
                                  ],
                                );
                              },
                            );
                            _animationController.repeat(reverse: true);
                          },
                          child: Text('Bayar'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            fixedSize: Size(120, 36),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 50,
                        top: 280,
                        child: ElevatedButton(
                          onPressed:
                              _showQRCodeDialog, // Panggil fungsi untuk menampilkan dialog QR Code
                          child: Image.asset(
                            'images/qris.png',
                            width: 100,
                            height: 36,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            primary: Color.fromRGBO(236, 236, 236, 1),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 129,
                        top: 148,
                        child: Text(
                          'Rp14.000',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xBF235211),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 134,
                        top: 175,
                        child: Text(
                          'x1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xF2235211),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 128,
                        top: 118,
                        child: Text(
                          'Lay’s BBQ (Medium)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 54,
                        top: 380,
                        child: SizedBox(
                          width: 141,
                          height: 83,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Subtotal\nBiaya admin\n',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.46),
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Total',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 194,
                        top: 380,
                        child: SizedBox(
                          width: 141,
                          height: 83,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Rp14.000\nRp.200\n',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.46),
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Rp14.200',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      // Positioned(
                      //   left: 114,
                      //   top: 665,
                      //   child: Container(
                      //     width: 175,
                      //     height: 56,
                      //     decoration: ShapeDecoration(
                      //       color: Color(0xFF468F2B),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(12),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // Positioned(
                      //   left: 165,
                      //   top: 680,
                      //   child: Text(
                      //     'Continue',
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 16,
                      //       fontFamily: 'Inter',
                      //       fontWeight: FontWeight.w700,
                      //       height: 0,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
