import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pharmacy/products_detail/product1.dart';
import 'package:pharmacy/products_detail/product1_detail.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildBottomNavigationBar(),
    );
  }

  CurvedNavigationBar _buildBottomNavigationBar() {
    final items = <Widget>[
      InkWell(
        child: const Icon(Icons.person, size: 30),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Product1More()));
        },
      ),
      InkWell(
        child: const Icon(Icons.favorite, size: 30),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Product1More()));
        },
      ),
      InkWell(
        child: const Icon(Icons.home, size: 30),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Product1More()));
        },
      ),
      InkWell(
        child: const Icon(Icons.notifications_active, size: 30),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Product1More()));
        },
      ),
      InkWell(
        child: const Icon(Icons.list, size: 30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Product1More(),
            ),
          );
        },
      ),
    ];
    return CurvedNavigationBar(
      color: Colors.green,
      buttonBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      items: items,
      index: index,
      height: 60,
      onTap: (index) => setState(() => this.index = index),
    );
  }
}
