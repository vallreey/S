import 'package:SiKarung/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:SiKarung/Home.dart';
import 'package:SiKarung/menuproduk.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navbar Bottom Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavbarBot(),
    );
  }
}

class NavbarBot extends StatefulWidget {
  @override
  _NavbarBotState createState() => _NavbarBotState();
}

class _NavbarBotState extends State<NavbarBot> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(), // Ganti dengan class Homepage yang sesuai dengan proyek Anda
    menuproduk(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/home_abu.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/produk_abu.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/orang_abu.png')),
            label: '', // Ganti label 'About' menjadi 'Profil'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green, // Warna saat dipilih
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class DummyPage extends StatelessWidget {
  final String title;

  DummyPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
