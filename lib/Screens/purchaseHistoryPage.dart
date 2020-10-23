import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';
import 'package:foodstuffs/Widgets/item.dart';
import 'package:foodstuffs/Widgets/expandableItem.dart';


class PurchaseHistoryScreen extends StatefulWidget {

  @override
  _PurchaseHistoryScreenState createState() => _PurchaseHistoryScreenState();
}

class _PurchaseHistoryScreenState extends State<PurchaseHistoryScreen> with TickerProviderStateMixin{

  ///VARIBLES HERE MUST BE FILLED WITH DATABASE DATA


  String ExtraDataName='Cauliflower';
  double ExtraDataAmount=70;
  double ExtraDataPromoAmount=60;
  double ExtraDataTotal=250;


  ///A function must be created to create multiple bools depending on the number purchase histories
  ///so that the drop downs on each expandable item will work.
  bool toshow1=false;
  bool toshow2=false;
  ///
  /// also i was stuck trying to set each of the expandable items to have this statefulpage
  /// as its Ticker provider
  ///
  ///
  /// if you also cant, Ive created another stateful expandable item in the expandableitem.dart
  /// which is below the stateless one, so u can replace it with that



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreyColor,

      body: SafeArea(
        child: Stack(

          children: [
            Container(
              child: Container(
                padding: EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  ///HEADING
                  child: Text(
                    'Purchase History',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .28,
              color: kgreenColor,
            ),

            ///FIRST ITEM
            Container(
              margin: EdgeInsets.only(top: 170,left: 24,right: 24),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width*.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ExpandableItem(
                      extraDataPromoAmount: ExtraDataPromoAmount,
                      extraDataTotal: ExtraDataTotal,
                      extraDataName: ExtraDataName,
                      extraDataAmount: ExtraDataAmount,
                      boolean: toshow1,
                      sync: this,
                      ontapForDropDown: (){
                        if(toshow1==false && ExtraDataName !=null && ExtraDataAmount !=null){
                          setState(() {
                            toshow1=true;
                          });
                        }
                        // ignore: unnecessary_statements
                        else {
                          setState(() {
                            toshow1=false;
                          });
                        }

                      },
                      date: '5th December 2019',
                      amount: 'RS250/-',
                      icon: toshow1?Icons.keyboard_arrow_up_rounded:Icons.keyboard_arrow_down_rounded,

                    ),
                  ),

                  ///SECOND ITEM
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width*.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ExpandableItem(
                      ///All the fields here must be replaced with data in a database
                      extraDataPromoAmount: ExtraDataPromoAmount,
                      extraDataTotal: ExtraDataTotal,
                      extraDataName: ExtraDataName,
                      extraDataAmount: ExtraDataAmount,
                      boolean: toshow2,
                      sync: this,
                      ontapForDropDown: (){
                        if(toshow2==false && ExtraDataName !=null && ExtraDataAmount !=null){
                          setState(() {
                            toshow2=true;
                          });
                        }

                        else {
                          setState(() {
                            toshow2=false;
                          });
                        }

                      },
                      date: '5th December 2019',
                      amount: 'RS250/-',
                      icon: toshow1?Icons.keyboard_arrow_up_rounded:Icons.keyboard_arrow_down_rounded,


                    ),
                  ),

                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}



