import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.title, required this.callback})
      : super(key: key);
  final String title;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: EdgeInsets.fromLTRB(4.w, 4.5.w, 4.w, 4.5.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.w),
            color: Theme.of(context).primaryColor),
        child: Center(
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 20.sp)),
        ),
      ),
    );
  }
}

class MemButton extends StatelessWidget {
  const MemButton({Key? key, required this.title, required this.callback})
      : super(key: key);
  final String title;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: EdgeInsets.fromLTRB(2.w, 1.5.w, 2.w, 1.5.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.w),
            color: Theme.of(context).primaryColor),
        child: Center(
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 20.sp)),
        ),
      ),
    );
  }
}
