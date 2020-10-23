import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodstuffs/Widgets/item.dart';
import 'package:foodstuffs/constants.dart';
import 'package:foodstuffs/Widgets/searchButton.dart';
import 'package:foodstuffs/Screens/itempage.dart';

class ItemPage extends StatefulWidget {
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [

                //TOP AREA TEXT
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Veggies',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: kHeadingblackColor,
                                ),
                              ),
                              Text(
                                'Select your favourite veggies.',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  color: kSubtextBlackColor,
                                ),
                              )
                            ],
                          ),
                        ),

                        SearchButton(),
                      ],
                    ),
                  ),
                ),


                //LIST OF ITEMS AREA
                Container(
                  margin: EdgeInsets.only(top: 35),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color: kgreyColor
                  ),

                  child: Container(
                    child: ListView(
                      padding: EdgeInsets.all(10),
                      children: [
                        ItemPageItem(
                          ontap: (){
                            Navigator.pushNamed(context, 'category');
                          },
                            name: 'Brinjol',
                          amount: 'RS30/-',
                          image: 'images/brinjal.png',
                        ),
                        ItemPageItem(
                          name: 'Carrot',
                          amount: 'RS40/-',
                          image: 'images/carrot.png',
                        ),
                        ItemPageItem(
                          name: 'CauliFlower',
                          amount: 'RS23/-',
                          image: 'images/Cauliflower.png',
                        ),
                        ItemPageItem(
                          name: 'Ginger',
                          amount: 'RS40/-',
                          image: 'images/ginger.png',
                        ),
                        ItemPageItem(
                          name: 'Bittergourd',
                          amount: 'RS40/-',
                          image: 'images/bittergourd.png',
                        ),
                        ItemPageItem(
                          name: 'Bittergourd',
                          amount: 'RS40/-',
                          image: 'images/bittergourd.png',
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
