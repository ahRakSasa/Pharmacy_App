import 'package:flutter/material.dart';

import '../../components/custom_icon_button.dart';
import '../../models/PopularProduct_model/skincare_page_model.dart';

class PopularProductDetailPage extends StatefulWidget {
  final PopularProductModel popular_product_detail;

  const PopularProductDetailPage({Key? key, required this.popular_product_detail}) : super(key: key);
  @override
  _PopularProductDetailPageState createState() => _PopularProductDetailPageState();
}

class _PopularProductDetailPageState extends State<PopularProductDetailPage> {
  PopularProductModel get product => widget.popular_product_detail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildImage(),
          buildFoodInfo(),
          buildAppBar(),
          buildOrderButton(),
        ],
      ),
    );
  }

  Widget buildFoodInfo() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / 2 - 16,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product .name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$${product .price}",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text("Italian soup"),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(
                    5, (index) => Icon(Icons.star, color: Colors.yellow)),
                Text("${product .rating}"),
                Text("(1k+)"),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.remove, size: 16),
                  onPressed: () {},
                  //backgroundColor: Colors.black.withOpacity(0.1),
                ),
                Text("1", style: TextStyle(fontSize: 18)),
                IconButton(
                  icon: Icon(Icons.add, size: 16),
                  onPressed: () {},
                  //backgroundColor: Colors.black.withOpacity(0.1),
                ),
              ],
            ),
            buildDescription(),
            buildIngredient(),
          ],
        ),
      ),
    );
  }

  Widget buildDescription() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Ingredient",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Text(product .description),
        ],
      ),
    );
  }

  Widget buildIngredient() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Description",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => Container(
                  child: Card(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://source.unsplash.com/200x20$index/?vegetable",
                      ),
                    ),
                  ),
                  width: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Image.network(
        product .image,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildOrderButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        elevation: 3,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.green),
                onPressed: () {},
                //borderColor: Colors.grey,
              ),
              SizedBox(width: 16),
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Place an Order",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              //backgroundColor: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
            IconButton(
              //backgroundColor: Colors.white.withOpacity(0.5),
              icon: Icon(Icons.favorite, color: Colors.red),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}