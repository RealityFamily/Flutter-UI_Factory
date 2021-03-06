library ui_factory;
import 'package:flutter/material.dart';

import '../Interfaces/IButton.dart';
import 'AndroidText.dart';

class AndroidButton extends IButton {
  AndroidButton({
    Key? key,
    required String content,
    required VoidCallback? onPressed,
    EdgeInsets? outMargin,
  }) : super(
          key: key,
          content: content,
          onPressed: onPressed,
          outMargin: outMargin,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.black12;
              }
              return Theme.of(context).buttonColor;
            },
          ),
        ),
        onPressed: onPressed,
        child: Container(
          child: AndroidText(content),
          padding: EdgeInsets.all(10),
        ),
      ),
      margin: outMargin,
    );
  }
}
