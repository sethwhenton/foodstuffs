import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';
import 'dropDownArrow.dart';

///THERE are 2 types in here
///on is stateless the other is stateful so you decide which you want to use
///

///stateful type
class ExpandableItem extends StatelessWidget {

  final double extraDataAmount;
  final String extraDataName;
  final double extraDataPromoAmount;
  final double extraDataTotal;
  final TickerProvider sync;
  final bool boolean;
  final Function ontapForDropDown;
  final String date;
  final String amount;
  final IconData icon;
  ExpandableItem({this.ontapForDropDown,this.date,this.amount,this.icon,@required this.boolean=false,@required this.sync,this.extraDataName,this.extraDataAmount,this.extraDataPromoAmount,this.extraDataTotal});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //TEXT AREA
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    date,
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
                    amount,
                    style: TextStyle(
                      fontSize: 14,
                      color: kSubtextBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                ],
              ),

              //DROP DOWN AREA
              DropDownArrow(
                icon: icon,
                ontap: ontapForDropDown,
              ),
            ],
          ),
              AnimatedSize(
              vsync: sync,
              duration: Duration(
              milliseconds: 300,
              ),
                  child: boolean?ExtraData(
                    productName: extraDataName,
                    amount: 70,
                    promoAmount: extraDataPromoAmount,
                    total: extraDataTotal,
                  ):SizedBox(),


              ),
      ],
      ),
    );
  }
}





///THIS IS THE DROP DOWN ITEMS
class ExtraData extends StatelessWidget {

  final String productName;
  final double amount;
  final double promoAmount;
  final double total;
  ExtraData({this.productName,this.amount,this.promoAmount,this.total});
  @override
  Widget build(BuildContext context) {
    return Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily:'Roboto',
                      color: kSubtextBlackColor,
                    ),
                  ),
                  Text(
                    'RS${amount}/-',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily:'Roboto',
                      color: kSubtextBlackColor,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Brinjal',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily:'Roboto',
                      color: kSubtextBlackColor,
                    ),
                  ),
                  Text(
                    'RS60/-',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily:'Roboto',
                      color: kSubtextBlackColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),


              ///PROMOTIONAL SAVINGS ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Promotional Savings',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily:'Roboto',
                            color: kgreenColor,
                          ),
                        ),
                        Text(
                          'Plant a flower now',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily:'Roboto',
                            color: kSubtextBlackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      'RS${promoAmount}/-',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily:'Roboto',
                        color: kgreenColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),


              ///TOTAL ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily:'Roboto',
                      color: kHeadingblackColor,
                    ),
                  ),
                  Text(
                    'RS${total}/-',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily:'Roboto',
                      color: kHeadingblackColor,
                    ),
                  ),
                ],
              ),

            ],
          ),

        );

  }
}






///THIS IS THE STATELESS TYPE

// class ExpandableWidget extends StatefulWidget {
//
//   @override
//   _ExpandableWidgetState createState() => _ExpandableWidgetState();
// }
//
// class _ExpandableWidgetState extends State<ExpandableWidget> with SingleTickerProviderStateMixin{
//
//   bool toshow=false;
//   IconData iconn=Icons.keyboard_arrow_down_rounded;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//
//               //TEXT AREA
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     '5th December 2019',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontFamily:'Roboto',
//                       color: kHeadingblackColor,
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * .01,
//                   ),
//                   Text(
//                     'RS250/-',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: kSubtextBlackColor,
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * .03,
//                   ),
//                 ],
//               ),
//
//               //DROP DOWN AREA
//               DropDownArrow(
//                 icon: toshow?Icons.keyboard_arrow_up_rounded:Icons.keyboard_arrow_down_rounded,
//                 ontap: (){
//                   if(toshow==false){
//                   setState(() {
//                     toshow=true;
//                   });
//                   }
//                   // ignore: unnecessary_statements
//                   else if(toshow==true){
//                     setState(() {
//                       toshow=false;
//                     });
//                   };
//                 },
//               ),
//             ],
//           ),
//
//           AnimatedSize(
//             vsync: this,
//             duration: Duration(
//               milliseconds: 300,
//             ),
//             child: toshow? Container(
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Cauliflower',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontFamily:'Roboto',
//                           color: kSubtextBlackColor,
//                         ),
//                       ),
//                       Text(
//                         'RS70/-',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontFamily:'Roboto',
//                           color: kSubtextBlackColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Brinjal',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontFamily:'Roboto',
//                           color: kSubtextBlackColor,
//                         ),
//                       ),
//                       Text(
//                         'RS60/-',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontFamily:'Roboto',
//                           color: kSubtextBlackColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//
//
//                   //PROMOTIONAL SAVINGS ROW
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Promotional Savings',
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontFamily:'Roboto',
//                                 color: kgreenColor,
//                               ),
//                             ),
//                             Text(
//                               'Plant a flower now',
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 fontFamily:'Roboto',
//                                 color: kSubtextBlackColor,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         child: Text(
//                           'RS60/-',
//                           style: TextStyle(
//                             fontSize: 15,
//                             fontFamily:'Roboto',
//                             color: kgreenColor,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//
//
//                   //TOTAL ROW
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Total:',
//                         style: TextStyle(
//                           fontSize: 30,
//                           fontFamily:'Roboto',
//                           color: kHeadingblackColor,
//                         ),
//                       ),
//                       Text(
//                         'RS250/-',
//                         style: TextStyle(
//                           fontSize: 30,
//                           fontFamily:'Roboto',
//                           color: kHeadingblackColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//
//             ):
//
//                 //THIS HAS NOTHING BUT DONT DELETE
//                 Container(
//                   child: Text(
//                     'Cancelled',
//                     style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 13,
//                     ),
//                   ),
//                 )
//           ),
//
//
//
//
//
//
//
//         ],
//       ),
//     );
//   }
// }
