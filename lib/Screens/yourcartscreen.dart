import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodstuffs/Widgets/Button.dart';
import 'package:foodstuffs/Widgets/item.dart';
import 'package:foodstuffs/constants.dart';
import 'package:foodstuffs/Widgets/bottomModalSheet.dart';

class YourCartScreen extends StatefulWidget {
  @override
  _YourCartScreenState createState() => _YourCartScreenState();
}

class _YourCartScreenState extends State<YourCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreyColor,

      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///BACK BUTTON
                  Container(
                    margin: EdgeInsets.only(left: 10,top: 15),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'home');
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color:Colors.white,
                      ),
                    ),
                  ),


                  ///CONTAINER CONTAINING BOTH HEADING TEXT
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          ///HEADING
                          Text(
                            'Your Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          ///SPACE BETWEEN TEXT
                          SizedBox(
                            height: 10,
                          ),

                          ///SUB TEXT
                          Text(
                            'Same day delivery for others before 10AM',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .35,
              color: kgreenColor,
            ),



            ///CONTAINER WHERE ITEMS ARE
            Container(
              margin: EdgeInsets.only(top: 170,left: 15,right: 15,bottom: 110),
              child: ListView(
                children: [

                  ///FIRST ITEM
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: YourCartScreenItem(
                      name: 'Cauliflower',
                      amount: 'RS 23/-',
                      image: 'images/Cauliflower.png',
                    ),
                  ),


                  ///SECOND ITEM
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: YourCartScreenItem(
                      name: 'Brinjal',
                      amount: 'RS 23/-',
                      image: 'images/brinjal.png',
                    ),
                  ),

                ],
              ),

            ),

            ///BUTTON AREA
            Center(
              child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height-kBottomNavigationBarHeight*3),
                child: AddToCartButton(
                  onpress: (){

                    ///ADD YOUR FUNCTION HERE



                    ///Created bottom modal sheeto to display thankyou
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                      ),
                        context: context,
                        builder: (BuildContext context){
                          return BottomModalSheet();
                        }
                    );

                  },
                  colour: kgreenColor,
                  buttonText: 'Checkout',
                  height: MediaQuery.of(context).size.height * .02,
                  width: MediaQuery.of(context).size.width*.87,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
