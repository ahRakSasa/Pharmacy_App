import 'package:flutter/material.dart';
import 'package:pharmacy/models/product1/product1_model.dart';

class Product1Detail extends StatefulWidget {
  // const DetailPage({Key? key}) : super(key: key);
  Product1Model item;

  Product1Detail(this.item);

  @override
  State<Product1Detail> createState() => _Product1DetailState();
}

class _Product1DetailState extends State<Product1Detail>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.grey[900],
      title: Text("Detail Page"),
    );
  }

  Widget _buildBody() {
    return Container(
      child: ListView(
        children: [
          Container(
            child: Image.asset(
              widget.item.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              widget.item.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              widget.item.des,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
