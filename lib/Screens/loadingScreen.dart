import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitFoldingCube(
            color: kgreenColor,
            size: 100,
          )
      ),
    );
  }
}
