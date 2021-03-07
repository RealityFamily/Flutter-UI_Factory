import 'package:flutter/material.dart';

import 'IFabric.dart';
import '../Elements/Interfaces/IWindow.dart';
import '../Elements/Interfaces/IActionExpansionTile.dart';
import '../Elements/Interfaces/IApp.dart';
import '../Elements/Interfaces/IButton.dart';
import '../Elements/Interfaces/IDropdownButton.dart';
import '../Elements/Interfaces/ILoadingPage.dart';
import '../Elements/Interfaces/IText.dart';
import '../Elements/Interfaces/ITextField.dart';
import '../Elements/AllPlatforms/LoadingPage.dart';



class WindowsFabric extends IFabric {
  @override
  IApp getApp({
    required Map<String, Widget Function(BuildContext)> routes,
    Color? primaryColor,
    Color? backgroundColor,
    Color? buttonColor,
  }) {
    // TODO: implement getApp
    throw UnimplementedError();
  }

  @override
  IButton getButton({
    Key? key,
    required String content,
    required onPressed,
    EdgeInsets? outMargin,
  }) {
    // TODO: implement getButton
    throw UnimplementedError();
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
    // TODO: implement getText
    throw UnimplementedError();
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
    // TODO: implement getText
    throw UnimplementedError();
  }

  @override
  IWindow getWindow({
    Key? key,
    String? title,
    required Widget child,
  }) {
    // TODO: implement getWindow
    throw UnimplementedError();
  }

  @override
  IDropdownButton<T> getDropdownButton<T>({
    Key? key,
    required T value,
    required onChanged,
    int? flexKoef,
    required List<DropdownMenuItem<T>> items,
  }) {
    // TODO: implement getDropdownButton
    throw UnimplementedError();
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
    // TODO: implement getTextField
    throw UnimplementedError();
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
    Map? childrens,
    EdgeInsets? outMargin,
  }) {
    // TODO: implement getExpansionTile
    throw UnimplementedError();
  }
}
