import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:sizer/sizer.dart';

class MyAppBar2 extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar2(
    this.title, {
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  _MyAppBar2State createState() => _MyAppBar2State();

  @override
  Size get preferredSize =>
      Size.fromHeight(SizerUtil.deviceType == DeviceType.mobile ? 9.h : 6.8.h);
}

class _MyAppBar2State extends State<MyAppBar2> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          //  elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: const Icon(
                CupertinoIcons.chevron_back,
                color: Colors.white,
              ),
            ),
          ),
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
