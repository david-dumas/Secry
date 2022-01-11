import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class GeneralAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final bool isSubpage;

  const GeneralAppbar({Key? key, this.title = '', this.backgroundColor = Colors.transparent, this.isSubpage = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isSubpage
          ? IconButton(
              color: kDarkGrayTextColor,
              icon: new Icon(Icons.chevron_left),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      title: Visibility(
        visible: title != '',
        child: Text(
          title,
          style: TextStyle(color: kDarkGrayTextColor),
        ),
      ),
      backgroundColor: backgroundColor,
      elevation: 0.0,
      automaticallyImplyLeading: isSubpage ? false : true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
