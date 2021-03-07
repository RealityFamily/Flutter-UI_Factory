import 'package:flutter/material.dart';

import 'IFabric.dart';
import '../Elements/Interfaces/IApp.dart';
import '../Elements/Interfaces/IActionExpansionTile.dart';
import '../Elements/Interfaces/IButton.dart';
import '../Elements/Interfaces/IDropdownButton.dart';
import '../Elements/Interfaces/ILoadingPage.dart';
import '../Elements/Interfaces/IText.dart';
import '../Elements/Interfaces/IWindow.dart';
import '../Elements/Interfaces/ITextField.dart';
import '../Elements/WebElements/WebAltText.dart';
import '../Elements/WebElements/WebApp.dart';
import '../Elements/WebElements/WebButton.dart';
import '../Elements/WebElements/WebDropdownButton.dart';
import '../Elements/WebElements/WebExpansionTile.dart';
import '../Elements/WebElements/WebText.dart';
import '../Elements/WebElements/WebTextField.dart';
import '../Elements/WebElements/WebWindow.dart';
import '../Elements/AllPlatforms/LoadingPage.dart';




class WebFabric extends IFabric {
  @override
  IApp getApp({
    required Map<String, Widget Function(BuildContext)> routes,
    Color? primaryColor,
    Color? backgroundColor,
    Color? buttonColor,
  }) {
    return WebApp(
      routes: routes,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      buttonColor: buttonColor,
    );
  }

  @override
  IButton getButton({
    Key? key,
    required String content,
    required onPressed,
    EdgeInsets? outMargin,
  }) {
    return WebButton(
      content: content,
      onPressed: onPressed,
      outMargin: outMargin,
      key: key,
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
    return WebText(
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
    return WebAltText(
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
    return WebWindow(
      child: child,
      title: title,
      key: key,
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
    return WebTextField(
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
  IDropdownButton<T> getDropdownButton<T>({
    Key? key,
    required T value,
    required onChanged,
    int? flexKoef,
    required List<DropdownMenuItem<T>> items,
  }) {
    return WebDropdownButton(
      items: items,
      value: value,
      key: key,
      flexKoef: flexKoef,
      onChanged: onChanged,
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
    EdgeInsets? outMargin
  }) {
    return WebExpansionTile(
      title,
      childrens: childrens,
      outMargin: outMargin,
    );
  }
}
