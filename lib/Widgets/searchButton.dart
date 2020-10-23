import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';


///SEARCH BUTTON ANIMATED
class SearchButton extends StatefulWidget {


  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> with SingleTickerProviderStateMixin{
  bool toshow=true;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
          vsync: this,
          duration: Duration(
            milliseconds: 600,
          ),
      child: InkWell(
        onTap: (){
          if(toshow==false){
            setState(() {
              toshow=true;
            });
          }
          else{
            setState(() {
              toshow=false;
            });
          }
        },
        child: toshow? Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: ktextblackColor,
              )
          ),
          child: Icon(
            Icons.search,
            size: 30,
            color: ktextblackColor,
          ),
        ):
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: ktextblackColor,
                  )
              ),
              child: TextField(
                  cursorColor: ktextblackColor,
                  textAlign: TextAlign.left,
                decoration: ktextfieldDecoration.copyWith(
                    filled: false,

                    hintText: 'Search',
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: ktextblackColor),
                ),
              ),
            ),

      ),
    );
  }
}
