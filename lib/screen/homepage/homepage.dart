import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/constants/product1/product1_constant.dart';
import 'package:pharmacy/models/PopularProduct_model/skincare_page_model.dart';
import 'package:pharmacy/onboarding/onborading.dart';
import 'package:pharmacy/products_detail/product1.dart';
import 'package:pharmacy/screen/BottomNavigation/bottom_navigationbar.dart';
import 'package:pharmacy/screen/Categories/category_new.dart';
import 'package:pharmacy/screen/Populare_Product/popular_product.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../components/colors.dart';
import '../../components/font.dart';
import '../../constants/Categories/Categories_list_constant.dart';
import '../../constants/Popular_product_constant/skincare_page_constant.dart';
import '../../constants/SliderConstant/slider_constant.dart';
import '../../models/Categories/categories_model.dart';
import '../../models/SliderModel/carousel_slider_model.dart';
import '../../models/product1/product1_model.dart';
import '../../products_detail/product1_detail.dart';
import '../Categories/category_list.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentIndex = 2;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        backgroundColor: Color.fromRGBO(4, 176, 79, 1),
        actions: [
          IconButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', false);

                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => OnboardingPage(),
                  ),
                );
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          children: [
            _buildCarouselSlider(SliderModel()),
            SizedBox(height: 20),
            _buildSectionTitlePopularProduct(),
            _buildSkincareList(),
            _buildSectionTitle(),
            _buildCategoryList(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBarMain(),
    );
  }

  Widget _buildCarouselSlider(SliderModel item) {
    return SafeArea(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason) {
            setState(
              () {
                _currentIndex = index;
              },
            );
          },
        ),
        items: sliderList
            .map(
              (item) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  elevation: 6.0,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          item.image,
                          fit: BoxFit.contain,
                          width: double.infinity,
                        ),
                        Center(
                          child: Text(
                            '${item.title}',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.black45,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildSectionTitlePopularProduct() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "ផលិតផលពេញនិយម",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        TextButton(
          onPressed: () {},
          //textColor: Colors.green,
          child: Text("ច្រើនទៀត"),
        ),
      ],
    );
  }

  Widget _buildSkincareList() {
    return Container(
      height: 220,
      margin: EdgeInsets.only(top: 24),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularproductList.length,
        itemBuilder: (context, index) {
          PopularProductModel popular_product = popularproductList[index];
          return PopularProduct(popular_product: popular_product);
        },
      ),
    );
  }

  Widget _buildSectionTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Categories",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        TextButton(
          onPressed: () {},
          //textColor: Colors.green,
          child: Text("View all"),
        ),
      ],
    );
  }

  Widget _buildCategoryList() {
    return GridView.builder(
      itemCount: categoriesList.length,
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 30 / 6,
      ),
      itemBuilder: (context, index) {
        final CategoryModel category_product = categoriesList[index];
        return CategoryListCard(category_product: category_product);
      },
    );
  }

  Widget _buildBottomNavigationBarMain() {
    return BottomNavigationBarPage();
  }
}
