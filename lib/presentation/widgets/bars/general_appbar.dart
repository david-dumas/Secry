import 'package:flutter/material.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/widgets/bars/appbar_trailing_icon_type.dart';

class GeneralAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final bool isSubpage;
  final AppbarTrailingIconType trailingIconType;

  const GeneralAppbar(
      {Key? key,
      this.title = '',
      this.backgroundColor = Colors.transparent,
      this.isSubpage = false,
      this.trailingIconType = AppbarTrailingIconType.none})
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
      actions: <Widget>[
        Visibility(
          visible: getIconForTrailingIconType() != null,
          child: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  handleTrailingIconAction();
                },
                child: Icon(
                  getIconForTrailingIconType(),
                  size: 26.0,
                  color: kDarkGray,
                ),
              )),
        ),
      ],
    );
  }

  void toggleSearchBar() {
    // TODO
  }

  void handleTrailingIconAction() {
    switch (this.trailingIconType) {
      case AppbarTrailingIconType.none:
        return;
      case AppbarTrailingIconType.search:
        toggleSearchBar();
        break;
      default:
        return;
    }
  }

  IconData? getIconForTrailingIconType() {
    switch (this.trailingIconType) {
      case AppbarTrailingIconType.none:
        return null;
      case AppbarTrailingIconType.search:
        return Icons.search;
      default:
        return null;
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
