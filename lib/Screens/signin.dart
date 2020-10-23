import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foodstuffs/Widgets/Button.dart';
import 'package:foodstuffs/constants.dart';
import 'package:foodstuffs/Widgets/textbox.dart';



class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Container(
          margin: EdgeInsets.only(top: 40,right: 10,left: 10),
          child: Column(
            children: [


              //SIGN IN AND IMAGE AREA
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      Text('Sign in',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: kHeadingblackColor,
                        ),
                      ),
                      Text(
                        'Please signin to continue',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.black45
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/croppedlogin.PNG'),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ],

                  ),
                ),
              ),

              //TEXT BOX AREA
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
                  child: Column(
                    children: [
                      TextboxforEmail(hintText: 'Email',),
                      SizedBox(
                        height: 20,
                      ),
                      TextboxforPassword(hintText: 'Password',),
                      SizedBox(
                        height: 20,
                      ),

                      //FORGOT PASSWORD AREA
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot password?',
                            style: TextStyle(
                              fontSize: 15,
                              color: kgreenColor,
                            ),
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 400,
                        height: 100,
                        child:ReuseableSendButton(colour: kgreenColor,buttonText: 'Signin',
                          onpress: (){

                          },
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dont have any account?',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),

                          //SIGNUP AREA
                          GestureDetector(
                            onTap: (){

                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 15,
                                  color: kgreenColor,
                              ),


                            ),
                          ),
                        ],
                      )
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




