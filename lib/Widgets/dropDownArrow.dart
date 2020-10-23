import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';

class DropDownArrow extends StatelessWidget {

  ///CUSTOMIZED IT FOR ON TAP FEATURE

  final Function ontap;
  final IconData icon;


  DropDownArrow({this.ontap,this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: klightgreenColor,
          ),
          child: Icon(
            icon,
            color: kgreenColor,
            size: 24,
          ),
        ),
      ),
    );
  }
}
