import 'package:flutter/material.dart';
import 'package:pharmacy/models/Categories/categories_model.dart';
import 'package:pharmacy/products_detail/product1.dart';

class CategoryListCard extends StatelessWidget {
  final CategoryModel category_product;

  const CategoryListCard({Key? key, required this.category_product})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Product1More();
          },
        ));
      },
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  category_product.image,
                  width: 60,
                  height: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(category_product.name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  Text(
                    "${category_product.totalItems}+ items",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
