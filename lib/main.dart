import 'package:flutter/material.dart';
import 'package:pharmacy/onboarding/onborading.dart';
import 'package:pharmacy/products_detail/product1.dart';
import 'package:pharmacy/screen/homepage/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.showHome}) : super(key: key);
  final bool showHome;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal,
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
            bodyText2: TextStyle(fontSize: 16, color: Colors.pink),
          ),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  primary: Colors.teal.shade700,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )))),
      //home: showHome ? Product1Detail() : OnboardingPage(),
      home: HomePageScreen(),
    );
  }
}
