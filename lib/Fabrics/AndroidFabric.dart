import 'package:flutter/material.dart';

import '../Elements/AllPlatforms/LoadingPage.dart';
import '../Elements/AndroidElements/AndroidAltText.dart';
import '../Elements/AndroidElements/AndroidApp.dart';
import '../Elements/AndroidElements/AndroidButton.dart';
import '../Elements/AndroidElements/AndroidDropdownButton.dart';
import '../Elements/AndroidElements/AndroidExpansionTile.dart';
import '../Elements/AndroidElements/AndroidText.dart';
import '../Elements/AndroidElements/AndroidTextField.dart';
import '../Elements/AndroidElements/AndroidWindow.dart';
import '../Elements/Interfaces/IActionExpansionTile.dart';
import '../Elements/Interfaces/IApp.dart';
import '../Elements/Interfaces/IButton.dart';
import '../Elements/Interfaces/IDropdownButton.dart';
import '../Elements/Interfaces/ILoadingPage.dart';
import '../Elements/Interfaces/IText.dart';
import '../Elements/Interfaces/ITextField.dart';
import '../Elements/Interfaces/IWindow.dart';
import 'IFabric.dart';

class AndroidFabric extends IFabric {
  @override
  IApp getApp(
      {required Map<String, Widget Function(BuildContext)> routes,
      Color? primaryColor,
      Color? backgroundColor,
      Color? buttonColor}) {
    return AndroidApp(
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      buttonColor: buttonColor,
      routes: routes,
    );
  }

  @override
  IButton getButton(
      {Key? key,
      required String content,
      required onPressed,
      EdgeInsets? outMargin}) {
    return AndroidButton(
      content: content,
      onPressed: onPressed,
      outMargin: outMargin,
    );
  }

  @override
  IText getText(
    String data, {
    double? textSize,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    Color? color,
    EdgeInsets? outMargin,
  }) {
    return AndroidText(
      data,
      textSize: textSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      textAlign: textAlign,
      color: color,
      outMargin: outMargin,
    );
  }

  @override
  IText getAltText(
    String data, {
    double? textSize,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    Color? color,
    EdgeInsets? outMargin,
  }) {
    return AndroidAltText(
      data,
      textSize: textSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      textAlign: textAlign,
      color: color,
      outMargin: outMargin,
    );
  }

  @override
  IWindow getWindow({
    Key? key,
    String? title,
    required Widget child,
  }) {
    return AndroidWindow(
      child: child,
      title: title,
      key: key,
    );
  }

  @override
  IDropdownButton<T> getDropdownButton<T>({
    Key? key,
    required T value,
    required onChanged,
    int? flexKoef,
    required List<DropdownMenuItem<T>> items,
  }) {
    return AndroidDropdownButton(
      items: items,
      key: key,
      value: value,
      onChanged: onChanged,
      flexKoef: flexKoef,
    );
  }

  @override
  ITextField getTextField({
    Key? key,
    required onSubmited,
    double? textSize,
    TextInputType? textInputType,
    TextEditingController? controller,
    int? flexKoef,
    EdgeInsets? outMargin,
  }) {
    return AndroidTextField(
      key: key,
      onSubmited: onSubmited,
      textSize: textSize,
      textInputType: textInputType,
      controller: controller,
      flexKoef: flexKoef,
      outMargin: outMargin,
    );
  }

  @override
  ILoadingPage<T> getLoadingPage<T>({
    required Future<T> loader,
    required Widget Function(T? response) content,
  }) {
    return LoadingPage(
      loader: loader,
      content: content,
    );
  }

  @override
  IActionExpansionTile getActionExpansionTile(
    String title, {
    Map<String, VoidCallback?>? childrens,
    EdgeInsets? outMargin,
  }) {
    return AndroidExpansionTile(
      title,
      childrens: childrens,
      outMargin: outMargin,
    );
  }
}
