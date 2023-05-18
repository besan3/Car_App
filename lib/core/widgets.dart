import 'package:cars/core/sizes.dart';
import 'package:flutter/material.dart';

class DefaultSpacer extends StatelessWidget {
  double? height=AppSizes.space18;
   double ?width=AppSizes.space18;
  DefaultSpacer({this.width,this.height});



  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      width: width,

    );
  }
}