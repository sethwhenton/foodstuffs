import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';
import 'package:foodstuffs/Widgets/searchButton.dart';
import 'package:foodstuffs/Widgets/item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 25,right: 20,left: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                //AVATAR IMAGE AND SEARCH BUTTON
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/profilee.jpg'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child: SearchButton(),
                    ),
                  ],
                ),




                //NAME TEXT AREA
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Micheal',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: kHeadingblackColor,
                            ),
                          ),
                          Text(
                            'Select your favourite category',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                color: kSubtextBlackColor,
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),







                //LIST AREA
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .65,
                    child: ListView(
                      children: [
                        HomeItem(
                          text: 'Fishes',
                          image: 'images/fish.png',
                          backgroundcolor: klightyellowColor,
                          textcolor: kyellowColor,
                          ontap: (){
                            //any other function needed can be placed here
                          },
                        ),
                        HomeItem(
                            text: 'Veggies',
                          image: 'images/veggies.png',
                          backgroundcolor: klightblueColor,
                          textcolor: kblueColor,
                          ontap: (){
                              Navigator.pushNamed(context, 'itempage');

                              //this leads to the items page
                          },
                        ),
                        HomeItem(
                          text: 'Ethnic',
                          image: 'images/brown.png',
                          backgroundcolor: klightbrownColor,
                          textcolor: kbrownColor,
                        ),
                        HomeItem(
                          text: 'Dairy&Pultry',
                          image: 'images/dairy.png',
                          backgroundcolor: klightblueColor,
                          textcolor: kblueColor,
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

