import 'package:flutter/material.dart';
import 'package:foodstuffs/Screens/purchaseHistoryPage.dart';
import 'package:foodstuffs/Screens/yourcartscreen.dart';
import 'package:foodstuffs/constants.dart';
import 'homescreen.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

Widget callPage(int currentIndex){
  switch (currentIndex){
    case 0:
      return HomeScreen();
    case 1:
      return YourCartScreen();
    case 2:
      return PurchaseHistoryScreen();
  }
}


  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kgreenColor,
        unselectedItemColor: ktextblackColor,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home_outlined,size: 30,),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.shopping_cart_outlined,size: 30,),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.reorder_outlined,size: 30,),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex=index;

          });
        },
      ),
      
      body: callPage(_currentIndex),

    );
  }
}
