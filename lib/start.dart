import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          title: 'shared preferences',
          debugShowCheckedModeBanner: false,
          home: Home(),
          builder: (_, child) => _Unfocus(child: child!));
    });
  }
}

//To enable removal of keyboard key from any area of the screen
class _Unfocus extends StatelessWidget {
  const _Unfocus({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
