import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodstuffs/Widgets/Button.dart';
import 'package:foodstuffs/constants.dart';
import 'package:foodstuffs/Widgets/quantity.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'itempage');
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color:ktextblackColor,
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'yourcart');
                      },
                      child: Container(
                        child: Stack(
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              size: 30,
                              color:ktextblackColor,
                            ),
                            Positioned(
                              top: 1,
                                right: 12,

                                child: Container(
                                  height: 17,
                                  width: 17,

                                  decoration: BoxDecoration(
                                    color: kgreenColor,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width*90,
                  height: MediaQuery.of(context).size.height * .30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/brinjal.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width*90,
                  height: MediaQuery.of(context).size.height * .39,
                  color: kextraLightGreyColor,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Per kg',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              color: kSubtextBlackColor,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Rs40/-',
                            style: TextStyle(
                              fontSize: 32,
                              fontFamily: 'Roboto',
                              color: kHeadingblackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Brinjal',
                            style: TextStyle(
                              fontSize: 21,
                              fontFamily: 'Roboto',
                              color: kHeadingblackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height * .10,

                            child: Text(
                              'Brinjal (Solanum melongena), also known as eggplant or aubergine, is an easily cultivated plant belonging to the family Solanaceae. Its fruit is high in nutrition and commonly consumed as a vegetable. The fruit and other parts of the plant are used in traditional medicine',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                color: kHeadingblackColor,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 110,
                            height: 40,
                            child: QuantityforCategoryScreen()
                        ),

                      ],
                    ),
                  ),
                ),
                AddToCartButton(
                  onpress: (){
                    Navigator.pushNamed(context, 'itempage');

                  },
                  colour: kgreenColor,
                  buttonText: 'Add to cart',
                  height: 60,
                  width: MediaQuery.of(context).size.width*90,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
