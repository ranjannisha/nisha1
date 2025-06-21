import 'package:flutter/material.dart';
import 'package:nisha1/src/core/themes/themes.dart';

Future<T?> showAppBottomSheet<T>(
    BuildContext context,
    Widget child, {
      AnimationController? animation,
      TickerProvider? vsync,
      bool enableDrag = true,
      Function()? onComplete,
      bool isDismissible = true,
      BoxConstraints? constraints,
    }) async {
  return await showModalBottomSheet<T>(
    backgroundColor: AppColors.whiteColor,
    context: context,
    constraints: constraints,
    builder: (context) => child,
    isScrollControlled: true,
    useRootNavigator: true,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
  ).whenComplete(onComplete ??
          () {
        //TODO:willPopScope
      });
}