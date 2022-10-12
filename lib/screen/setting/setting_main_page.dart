import 'dart:ui';

import 'package:flutter/material.dart';

class SettingMainPage extends StatefulWidget {
  const SettingMainPage({Key? key}) : super(key: key);

  @override
  State<SettingMainPage> createState() => _SettingMainPageState();
}

class _SettingMainPageState extends State<SettingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Card(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 200,
                child: _buildImageHeader()),
            Container(
                width: double.infinity, height: 600, child: _buildGridList())
          ],
        ),
      ),
    );
  }

  Widget _buildGridList() {
    return Card(
      child: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 5 / 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.face,
                  color: Colors.white,
                  size: 80,
                ),
                Text(
                  'គណនី',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.green,
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.place,
                  color: Colors.white,
                  size: 80,
                ),
                Text(
                  'ទីតាំង',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.green,
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 80,
                ),
                Text(
                  'ប្រវត្តិការទិញ',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.green,
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 80,
                ),
                Text(
                  'ចាកចេញ',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.green,
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.error,
                  color: Colors.white,
                  size: 80,
                ),
                Text(
                  'អំពីយើង',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.green,
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.contact_phone,
                  color: Colors.white,
                  size: 80,
                ),
                Text(
                  'សេវ៉ាកម្ម',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.green,
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.contact_phone,
                  color: Colors.white,
                  size: 80,
                ),
                Text(
                  'សេវ៉ាកម្ម',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.green,
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.contact_phone,
                  color: Colors.white,
                  size: 80,
                ),
                Text(
                  'សេវ៉ាកម្ម',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageHeader() {
    return Card(
      child: Image(image: AssetImage('assets/images/logo.jpg')),
    );
  }
}
