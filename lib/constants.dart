import 'package:flutter/material.dart';

///IN HERE CONTAINS COLORS AND TEXTFIELD DECORATIONS

// const kgreenColor=Color(0xFF2BB673);

///GREEN COLORS
const kgreen2Color=Color(0xFF2BB673);
const kgreenColor=Color(0xFF17CEB2);
const klightgreenColor=Color(0xFFd3fff7);

///USED FOR BACKGROUND
const kgreyColor=Color(0xFFEBEBEB);
const kdarkgrayColor=Color(0xFF434444);
const klightblackColor=Color(0xFFFFFFFF);
const kextraLightGreyColor=Color(0xFFefefef);


///TEXT COLORS FOR HEADING AND SUB HEADING
const kHeadingblackColor=Colors.black54;
const kSubtextBlackColor=Colors.black45;
const ktextblackColor=Color(0xFFCDCDCD);


///CANCELLED COLOR
const kRedColor=Colors.red;

///HOME SCREEN COLORS
const klightyellowColor=Color(0xFFF6F6B8);
const kyellowColor=Color(0xFFF7A50D);

const klightblueColor=Color(0xFFD8F9FF);
const kblueColor=Color(0xFF4CA5FF);

const klightbrownColor=Color(0xFFFAF2E9);
const kbrownColor=Color(0xFF916637);



// Color(0xFF#78E19C);
//
// Color(0xFF17CFB3);





///TEXT FIELD CONSTANT

const ktextfieldDecoration=InputDecoration(
  filled: true,
  fillColor: kgreyColor,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: ktextblackColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: ktextblackColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  hintText: 'Enter Data',
  hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),

  ),
);
