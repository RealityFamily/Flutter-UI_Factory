library ui_factory;
import 'package:flutter/material.dart';

import '../Interfaces/IDropdownButton.dart';

class WebDropdownButton<T> extends IDropdownButton<T> {
  WebDropdownButton({
    Key? key,
    required T value,
    required ValueChanged<T?> onChanged,
    int? flexKoef,
    required List<DropdownMenuItem<T>> items,
  }) : super(
          key: key,
          value: value,
          onChanged: onChanged,
          flexKoef: flexKoef,
          items: items,
        );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexKoef!,
      child: DropdownButton<T>(
        value: value,
        onChanged: onChanged,
        items: items,
      ),
    );
  }
}
