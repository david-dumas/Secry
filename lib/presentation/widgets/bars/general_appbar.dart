import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class GeneralAppbar extends StatefulWidget with PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final bool isSubpage;
  final bool shouldHideBackButton;
  final bool isShowingBottomBorder;
  final GestureDetector? trailingGestureWithIcon;

  const GeneralAppbar(
      {Key? key,
      this.title = '',
      this.backgroundColor = Colors.transparent,
      this.shouldHideBackButton = false,
      this.isSubpage = false,
      this.isShowingBottomBorder = false,
      this.trailingGestureWithIcon = null,
      })
      : super(key: key);

  @override
  State<GeneralAppbar> createState() => _GeneralAppbarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _GeneralAppbarState extends State<GeneralAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: (widget.isSubpage && !widget.shouldHideBackButton)
          ? IconButton(
              color: kDarkGrayTextColor,
              icon: new Icon(Icons.chevron_left),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      title: TitleForAppBar(title: widget.title),
      centerTitle: false,
      leadingWidth: widget.isSubpage ? 56 : 0,
      backgroundColor: widget.backgroundColor,
      bottom: widget.isShowingBottomBorder
          ? PreferredSize(
              child: Container(
                color: kLineSeparatorColor,
                height: 1.0,
              ),
              preferredSize: Size.fromHeight(4.0))
          : null,
      elevation: 0.0,
      automaticallyImplyLeading: widget.isSubpage ? false : true,
      actions: <Widget>[
        Visibility(
          visible: widget.trailingGestureWithIcon != null,
          child: Padding(padding: EdgeInsets.only(right: 20.0, left: 20.0), child: widget.trailingGestureWithIcon),
        ),
      ],
    );
  }
}

class TitleForAppBar extends StatelessWidget {
  final String title;

  const TitleForAppBar({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: title != '',
      child: Text(
        title,
        style: TextStyle(color: kDarkGrayTextColor),
      ),
    );
  }
}
