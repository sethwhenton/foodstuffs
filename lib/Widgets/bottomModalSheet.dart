import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';

class BottomModalSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.50,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            ///BIG GREEN ICON
            Container(
              // margin: EdgeInsets.only(top: 10),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: klightgreenColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                  Icons.done_rounded,
                color: kgreenColor,
                size: 70,
              ),
            ),

            ///THANK YOU STATEMENT
            Container(

              child: Column(
                children: [
                  Text(
                    'Thankyou',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: kgreenColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 100,
                    child: Text(
                      'Thank you for visiting us and making your purchase! We\'re glad that you found what you were looking for. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.7,
                        color: kSubtextBlackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),


            ///close button
            GestureDetector(
              onTap:(){
                Navigator.pushNamed(context, 'home');
              },
              child: Container(
                width: 80,
                // margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: kgreenColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.circular(100),)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
