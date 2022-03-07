import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class GeneralAppbar extends StatefulWidget with PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final bool isSubpage;
  final bool shouldHideBackButton;
  final bool isShowingSearchBar;
  final String searchValue;
  final GestureDetector? trailingGestureWithIcon;
  final Function(String)? searchValueChanged;

  const GeneralAppbar(
      {Key? key,
      this.title = '',
      this.backgroundColor = Colors.transparent,
      this.shouldHideBackButton = false,
      this.isSubpage = false,
      this.isShowingSearchBar = false,
      this.searchValue = '',
      this.trailingGestureWithIcon = null,
      this.searchValueChanged = null})
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
      title: widget.isShowingSearchBar
          ? SearchBarForAppBar(
              searchValue: widget.searchValue,
              searchValueChanged: widget.searchValueChanged != null ? widget.searchValueChanged! : (_) => '')
          : TitleForAppBar(title: widget.title),
      centerTitle: false,
      leadingWidth: widget.isSubpage ? 20 : 0,
      backgroundColor: widget.backgroundColor,
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

class SearchBarForAppBar extends StatefulWidget {
  final String searchValue;
  final Function(String) searchValueChanged;

  SearchBarForAppBar({Key? key, required this.searchValue, required this.searchValueChanged}) : super(key: key);

  @override
  State<SearchBarForAppBar> createState() => _SearchBarForAppBarState();
}

class _SearchBarForAppBarState extends State<SearchBarForAppBar> {
  final TextEditingController searchBarTextEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Form(
          key: _formKey,
          child: TextField(
            controller: searchBarTextEditingController,
            autofocus: widget.searchValue == '',
            autocorrect: false,
            decoration: InputDecoration(
              fillColor: searchBarBackgroundColor,
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                color: searchBarClearButtonColor,
                onPressed: () {
                  searchBarTextEditingController.text = '';
                  this.widget.searchValueChanged('');
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
            onChanged: (newValue) {
              this.widget.searchValueChanged(newValue);
            },
          ),
        ),
      ),
    );
  }
}
