import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar(
    this.title, {
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize =>
      Size.fromHeight(SizerUtil.deviceType == DeviceType.mobile ? 9.h : 6.8.h);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            widget.title,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 20.sp, color: Colors.black),
          ),
        ));
  }
}
