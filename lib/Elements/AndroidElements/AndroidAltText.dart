library ui_factory;
import 'package:flutter/material.dart';

import '../Interfaces/IText.dart';

class AndroidAltText extends IText {
  
  AndroidAltText(
    String data, {
    Key? key,
    double? textSize,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    Color? color,
    EdgeInsets? outMargin,
  }) : super(
          data,
          key: key,
          textSize: textSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          textAlign: textAlign,
          color: color ?? Colors.white,
          outMargin: outMargin
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: TextStyle(
          fontSize: textSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          color: color,
        ),
        textAlign: textAlign,
      ),
      margin: outMargin,
    );
  }
}
