import 'package:flutter/material.dart';

class CategoryPageNew extends StatefulWidget {
  const CategoryPageNew({Key? key}) : super(key: key);

  @override
  State<CategoryPageNew> createState() => _CategoryPageNewState();
}

class _CategoryPageNewState extends State<CategoryPageNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            onTap: () {},
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/panadol.jpg'),
                ),
                title: Text(
                  "ផលិតផលសម្រស់",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  '127+Items',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                tileColor: Colors.green,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/panadol.jpg'),
                ),
                title: Text(
                  "ផលិតផលសម្រស់",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  '127+Items',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                tileColor: Colors.green,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/panadol.jpg'),
                ),
                title: Text(
                  "ផលិតផលសម្រស់",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  '127+Items',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                tileColor: Colors.green,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/panadol.jpg'),
                ),
                title: Text(
                  "ផលិតផលសម្រស់",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  '127+Items',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                tileColor: Colors.green,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/panadol.jpg'),
                ),
                title: Text(
                  "ផលិតផលសម្រស់",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  '127+Items',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                tileColor: Colors.green,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/panadol.jpg'),
                ),
                title: Text(
                  "ផលិតផលសម្រស់",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  '127+Items',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                tileColor: Colors.green,
              ),
            ),
          ),
        ],
        shrinkWrap: true,
      ),
    );
  }
}
