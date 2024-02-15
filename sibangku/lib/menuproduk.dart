import 'package:flutter/material.dart';
import 'package:SiKarung/addproduct.dart';

class menuproduk extends StatefulWidget {
  @override
  _menuprodukState createState() => _menuprodukState();
}

class _menuprodukState extends State<menuproduk> {
  String _selectedFilter = 'Harga';

  List<Map<String, dynamic>> products = [
    {
      'image': 'images/wa.png',
      'name': 'Lay\'s BBQ (Medium)',
      'price': 'Rp 14.000'
    },
    {'image': 'images/onya.jpg', 'name': 'Lay’s Classic Classique (Large)', 'price': 'Rp 20.000'},
    {
      'image': 'images/Gorengan.jpg',
      'name': 'Sunrise Tofu',
      'price': 'Rp 11.000'
    },
    {
      'image': 'images/tomat.png',
      'name': 'Tomat Segar (1 gram)',
      'price': 'Rp2.000'
    },
    {
      'image': 'images/minyak.png',
      'name': 'Minyak Sanco 1 Liter',
      'price': 'Rp30.000'
    },
    {
      'image': 'images/detol.png',
      'name': 'Detol Sabun Bar',
      'price': 'Rp8.000'
    },
  ];

  void _showDropdownMenu(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(0, 150, 0, 0),
      items: <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'HargaTertinggi',
          child: Text('Harga Tertinggi'),
        ),
        PopupMenuItem<String>(
          value: 'HargaTerendah',
          child: Text('Harga Terendah'),
        ),
        PopupMenuItem<String>(
          value: 'AtoZ',
          child: Text('A-Z'),
        ),
        PopupMenuItem<String>(
          value: 'ZtoA',
          child: Text('Z-A'),
        ),
      ],
    ).then((value) {
      if (value != null) {
        setState(() {
          _selectedFilter = value;
          if (_selectedFilter == 'HargaTertinggi') {
            // Urutkan produk berdasarkan harga tertinggi
            products.sort((a, b) {
              int priceA =
                  int.parse(a['price'].replaceAll(RegExp(r'[^\d]+'), ''));
              int priceB =
                  int.parse(b['price'].replaceAll(RegExp(r'[^\d]+'), ''));
              return priceB.compareTo(priceA);
            });
          } else if (_selectedFilter == 'HargaTerendah') {
            // Urutkan produk berdasarkan harga terendah
            products.sort((a, b) {
              int priceA =
                  int.parse(a['price'].replaceAll(RegExp(r'[^\d]+'), ''));
              int priceB =
                  int.parse(b['price'].replaceAll(RegExp(r'[^\d]+'), ''));
              return priceA.compareTo(priceB);
            });
          } else if (_selectedFilter == 'AtoZ') {
            // Urutkan produk berdasarkan nama produk dari A-Z
            products.sort((a, b) {
              return a['name'].compareTo(b['name']);
            });
          } else if (_selectedFilter == 'ZtoA') {
            // Urutkan produk berdasarkan nama produk dari Z-A
            products.sort((a, b) {
              return b['name'].compareTo(a['name']);
            });
          }
        });
      }
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 55),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  transform: Matrix4.translationValues(0, 0, 0),
                  width: 321,
                  height: 100,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _showDropdownMenu(context);
                        },
                        child: Container(
                          width: 44,
                          height: 44,
                          decoration: ShapeDecoration(
                            color: Color(0xFF468F2B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'images/filter.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ), // Jarak antara ShapeDecoration dan TextField
                      Container(
                        width: 262,
                        height: 44,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFC5C5C5)),
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              _searchQuery = value;
                            });
                          },
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Cari produk mu di sini...',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height:
                        5), // Jarak antara TextField dan Text "Daftar Produk"
                Text(
                  'Daftar Produk',
                  style: TextStyle(
                    color: Color(0xFF468F2B),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                    height:
                        0), // Jarak antara TextField dan Text "Daftar Produk"
                Expanded(
                  child: ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (_searchQuery.isEmpty ||
                            products[index]['name']
                                .toLowerCase()
                                .contains(_searchQuery.toLowerCase())) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 20),
                            width: 324,
                            height: 70,
                            decoration: ShapeDecoration(
                              color: Color(0xFFEDEDED),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left:
                                          10), // Menggeser gambar ke kiri sebesar 10 piksel
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: Color(0xFFD7D7D7),
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  child: Image.asset(
                                    products[index]['image'],
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      products[index]['name'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      products[index]['price'],
                                      style: TextStyle(
                                        color: Color(0xFF468F2B),
                                        fontSize: 10,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      width: 25,
                                      height: 25,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF468F2B),
                                        shape: CircleBorder(),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'images/beli.png',
                                          width: 14,
                                          height: 14,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      width: 25,
                                      height: 25,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFECB34D),
                                        shape: CircleBorder(),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'images/editproduk.png',
                                          width: 14,
                                          height: 14,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    GestureDetector(
                                      onTap: () {
                                        _deleteProduct(index);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 25,
                                        height: 25,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: CircleBorder(),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            'images/buang.png',
                                            width: 14,
                                            height: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                  ],
                                ),
                              ],
                            ),
                          );
                        } else {
                          return SizedBox.shrink();
                        }
                      }),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddProduct()),
                );
              },
              child: Container(
                width: 72,
                height: 72,
                decoration: ShapeDecoration(
                  color: Color(0xFF468F2B),
                  shape: CircleBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 20,
                      offset: Offset(0, 5),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
