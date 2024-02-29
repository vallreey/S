import 'package:flutter/material.dart';
import 'package:SiKarung/navbar-bot.dart';
import 'package:SiKarung/checkout-2.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    // Hitung total harga berdasarkan jumlah barang
    int totalPrice = 14000 * itemCount;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NavbarBot()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: 390,
                height: 800,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 80,
                      top: 50,
                      child: Text(
                        'Lay’s BBQ (Medium)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 58,
                      top: 90,
                      child: SizedBox(
                        width: 259,
                        child: Text(
                          'Snacks',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                Colors.black.withOpacity(0.25999999046325684),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 90,
                      top: 130,
                      child: Image(
                        image: AssetImage('images/wa.png'),
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Positioned(
                      left: 134,
                      top: 350,
                      child: Container(
                        width: 122,
                        height: 31,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 122,
                                height: 31,
                                decoration: ShapeDecoration(
                                  color: Color(0x1E458F2A),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 22,
                              top: 7,
                              child: Text(
                                'Rp${totalPrice.toStringAsFixed(0)}', // Tampilkan total harga
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
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 150,
                      top: 400,
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              if (itemCount > 0) {
                                setState(() {
                                  itemCount--;
                                });
                              }
                            },
                          ),
                          Text(
                            itemCount.toString(),
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                itemCount++;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 65,
                      top: 460,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavbarBot()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: const Color.fromARGB(255, 50, 106, 52),
                          side: BorderSide(color: Colors.green, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Container(
                          width: 227,
                          height: 73,
                          child: Center(
                            child: Text(
                              'Lanjut Pilih Barang',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 65,
                      top: 550,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Checkout2()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Container(
                          width: 227,
                          height: 73,
                          child: Center(
                            child: Text(
                              'Checkout',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
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
