import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';

///delete button found in the item container
///
/// i already created the ontap so you just have to apply it

class DeleteButton extends StatelessWidget {
  final Function ontap;
  DeleteButton({this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: kgreenColor,
          borderRadius: BorderRadius.circular(13.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}

