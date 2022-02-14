import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/widgets/bars/appbar_trailing_icon_type.dart';

class GeneralAppbar extends StatefulWidget with PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final bool isSubpage;
  final bool isShowingSearchBar;
  final GestureDetector? trailingGestureWithIcon;

  const GeneralAppbar(
      {Key? key,
      this.title = '',
      this.backgroundColor = Colors.transparent,
      this.isSubpage = false,
      this.isShowingSearchBar = false,
      this.trailingGestureWithIcon = null})
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
      leading: widget.isSubpage
          ? IconButton(
              color: kDarkGrayTextColor,
              icon: new Icon(Icons.chevron_left),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      title: widget.isShowingSearchBar ? SearchBarForAppBar() : TitleForAppBar(title: widget.title),
      backgroundColor: widget.backgroundColor,
      elevation: 0.0,
      automaticallyImplyLeading: widget.isSubpage ? false : true,
      actions: <Widget>[
        Visibility(
          visible: widget.trailingGestureWithIcon != null,
          child: Padding(padding: EdgeInsets.only(right: 20.0), child: widget.trailingGestureWithIcon),
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

class SearchBarForAppBar extends StatelessWidget {
  final TextEditingController searchBarTextEditingController = TextEditingController();

  SearchBarForAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: TextField(
          controller: searchBarTextEditingController,
          autofocus: true,
          decoration: InputDecoration(
            fillColor: searchBarBackgroundColor,
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              color: searchBarClearButtonColor,
              onPressed: () {
                searchBarTextEditingController.text = '';
              },
            ),
            hintText: '${tr('action_search')}...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
