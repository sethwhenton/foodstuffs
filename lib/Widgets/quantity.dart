import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';


///THIS IS THE WIDGET FOR selecting an amount OF ITEMS
///
/// THERE ARE 2 types one for item and one for category
///
/// difference is they have different colors


///FOR THE ITEM SCREEN
class Quantity extends StatefulWidget {
  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {

  ///default is set to 2
  int number=2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      child: Card(
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            ///SUBTRACT BUTTON
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: (){
                  setState(() {
                    number--;
                    return number;
                  });

                },
                child: Container(
                  child: Icon(
                    Icons.remove,
                    size: 23,
                    color: kgreenColor,
                  ),
                ),
              ),
            ),

            /// DISPLAY OR NUMBER AREA
            Text(
              number.toString(),
              style: TextStyle(
                color: kSubtextBlackColor,
                fontSize: 17,
              ),
            ),

            ///ADD BUTTON
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: (){
                  setState(() {
                    number++;
                    return number;
                  });

                },
                child: Container(
                  child: Icon(
                    Icons.add,
                    size: 23,
                    color: kgreenColor,
                  ),
                ),
              ),
            ),

          ],

        ),
      ),
    );
  }
}







///FOR THE Category SCREEN
class QuantityforCategoryScreen extends StatefulWidget {
  @override
  _QuantityforCategoryScreenState createState() => _QuantityforCategoryScreenState();
}

class _QuantityforCategoryScreenState extends State<QuantityforCategoryScreen> {
  int number=2;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Card(
        elevation: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: (){
                  setState(() {
                    number--;
                  });

                },
                child: Container(
                  height: 29,
                  decoration: BoxDecoration(
                    color: kgreenColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),


                  child: Icon(
                    Icons.remove,
                    size: 23,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  number.toString(),
                  style: TextStyle(
                    color: kSubtextBlackColor,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: (){
                  setState(() {
                    number++;
                  });

                },
                child: Container(
                  height: 29,
                  decoration: BoxDecoration(
                    color: kgreenColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),

                  child: Icon(
                    Icons.add,
                    size: 23,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

          ],

        ),
      ),
    );
  }
}

