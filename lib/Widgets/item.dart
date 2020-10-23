import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';
import 'quantity.dart';
import 'deletebutton.dart';
import 'dropDownArrow.dart';


///THERE ARE 3 WIDGETS IN HERE
///ONE IN THE HOMESCREEN
///ANOTHER IN THE ITEMPAGE SCREEN
///ANOTHER IN THE YOUR CART PAGE SCREEN


///HOME SCREEN ITEM WIDGET
class HomeItem extends StatelessWidget {

  ///customizations for each item in the list can be done here

  final String text;
  final String image;
  final Color textcolor;
  final Color backgroundcolor;
  final Function ontap;

  HomeItem({@required this.text,this.image,this.backgroundcolor,this.textcolor,this.ontap});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: InkWell(
          onTap: ontap,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: backgroundcolor,
                ),

                ///TEXT AND PICTURE OF FISH
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      ///TEXT
                      Text(
                        text,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: textcolor,
                        ),
                      ),

                      //Image
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(image),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}




///ITEM PAGE WIDGET
class ItemPageItem extends StatelessWidget {

  ///customizations for each item in the list can be done here

  final String name;
  final String amount;
  final String image;
  final Function ontap;

  ItemPageItem({@required this.name,this.amount,this.image,this.ontap});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: InkWell(
        onTap: ontap,
        child: Column(
          children: [
            ///THIS IS THE BACKGROUND COLOR
            Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),

              ///TEXT AND PICTURE OF ITEM
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Image
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.fill
                        ),
                      ),
                    ),


                    ///NAME
                    Column(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: kSubtextBlackColor,
                          ),
                        ),

                        ///AMOUNT
                        Text(
                          amount,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: kHeadingblackColor,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}









///YOUR CART PAGE WIDGET
class YourCartScreenItem extends StatelessWidget {

  ///customizations for each item in the list can be done here

  final String name;
  final String amount;
  final String image;
  final Function ontap;

  YourCartScreenItem({@required this.name,this.amount,this.image,this.ontap});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.white,
        ),

        ///TEXT AND PICTURE OF ITEM
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Image of item
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),


              ///NAME AND AMOUNT
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(top: 15,left: 4,right: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kHeadingblackColor,
                        ),
                      ),


                      ///CREATING SPACE BETWEEN THE TEXT
                      SizedBox(
                        height: 8,
                      ),

                      ///AMOUNT
                      Text(
                        amount,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: kSubtextBlackColor,

                        ),
                      ),
                    ],
                  ),
                ),
              ),


              ///QUANTITY ADDER

              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 4,right: 4),
                  width: 80,
                    child: Quantity()
                ),
              ),


              //DELETE
              Container(
                  margin: EdgeInsets.only(left: 4),
                width: 40,
                  child: DeleteButton()
              ),


            ],
          ),
        ),

      ),
    );
  }
}





///PURCHASE HISTORY ITEM
class PurchaseHistoryItem extends StatelessWidget {
  const PurchaseHistoryItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          ///TEXT AREA
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '5th December 2019',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily:'Roboto',
                  color: kHeadingblackColor,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Text(
                'RS250/-',
                style: TextStyle(
                  fontSize: 14,
                  color: kSubtextBlackColor,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Text(
                'Cancelled',
                style: TextStyle(
                  fontSize: 14,
                  color: kRedColor,
                ),
              ),
            ],
          ),

          ///DROP DOWN AREA
          DropDownArrow(
            ontap: (){

            },
          ),
        ],
      ),
    );
  }
}







