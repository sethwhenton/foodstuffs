import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';


///THERE ARE 2 buttons here
///one for the sign in area
///another for add to cart and checkout



///sign in button
class ReuseableSendButton extends StatelessWidget {
  final Color colour;
  final String buttonText;
  final Function onpress;

  ReuseableSendButton({@required this.onpress,@required this.colour,@required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: colour,                    //Colors.blueAccent,
        borderRadius: BorderRadius.circular(10.0),
        elevation: 5.0,
        child: InkWell(
          borderRadius: BorderRadius.circular(10.0),
          child: MaterialButton(
            onPressed: onpress,
            //Go to registration screen.
            //Navigator.pushNamed(context, 'register');

            minWidth: 42.0,
            height: 42.0,
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ),
      ),
    );
  }
}



///add to cart and checkout button
class AddToCartButton extends StatelessWidget {
  final Color colour;
  final String buttonText;
  final Function onpress;
  final double height;
  final double width;

  AddToCartButton({@required this.onpress,@required this.colour,@required this.buttonText,@required this.height,@required this.width});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
        elevation: 5.0,
        child: InkWell(
          borderRadius: BorderRadius.circular(10.0),
          child: MaterialButton(
            onPressed: onpress,

            minWidth: width,
            height: height,
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
