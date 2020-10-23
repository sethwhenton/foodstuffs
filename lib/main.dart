import 'package:flutter/material.dart';
import 'package:foodstuffs/Screens/home.dart';
import 'package:foodstuffs/Screens/homescreen.dart';
import 'package:foodstuffs/Screens/loadingScreen.dart';
import 'package:foodstuffs/Screens/signin.dart';
import 'package:foodstuffs/Screens/itempage.dart';
import 'package:foodstuffs/Screens/yourcartscreen.dart';
import 'package:foodstuffs/Screens/purchaseHistoryPage.dart';
import 'package:foodstuffs/Screens/categoryScreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            // ignore: deprecated_member_use
              body1: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black,
              ),
          ),
      ),

      initialRoute: 'home',
      routes: {
        'loadingscreen':(context)=>LoadingScreen(), ///CREATED A LOADING SCREEN
        'signin':(context)=>Signin(),               ///SIGN IN SCREEN
        'home':(context)=>Home(),                   ///HOME SCREEN CONTAINING BOTTOM NAV BAR
        'homescreen':(context)=>HomeScreen(),       ///HOME SCREEN CONTENT
        'itempage':(context)=>ItemPage(),           ///ITEM PAGE CONTENT
        'yourcart':(context)=>YourCartScreen(),     ///YOUR CART SCREEN WHEN CART IS TAPPED
        'purchasehistory':(context)=>PurchaseHistoryScreen(), ///PURCHASE HISTORY 3rd on nav bar
        'category':(context)=>CategoryScreen(),       ///PAGE THAT COMES WHEN AN ITEM IS SELECTED

      },
    );
  }
}


