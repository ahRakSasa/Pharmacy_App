import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pharmacy/constants/product1/product1_constant.dart';
import 'package:pharmacy/products_detail/product1_detail.dart';

import '../models/product1/product1_model.dart';

class Product1More extends StatefulWidget {
  const Product1More({Key? key}) : super(key: key);

  @override
  State<Product1More> createState() => _Product1MoreState();
}

class _Product1MoreState extends State<Product1More>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: _buildListViewBuilder(),
    );
  }

  Widget _buildListViewBuilder() {
    return GridView.builder(
      padding: EdgeInsets.only(top: 40, left: 2, right: 2),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: product1List.length,
      itemBuilder: (context, index) {
        return _buildItem(product1List[index]);
      },
    );
  }

  Widget _buildItem(Product1Model item) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          PageTransition(
            child: Product1Detail(item),
            type: PageTransitionType.bottomToTop,
            fullscreenDialog: true,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        // alignment: Alignment.center,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: AssetImage(item.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                item.title,
                style: TextStyle(fontSize: 20),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
