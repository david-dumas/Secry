import 'package:flutter/material.dart';
import 'package:secry/domain/users/group_user.dart';

import 'package:secry/constants.dart';

class UserCell extends StatelessWidget {
  final bool isAddingPeopleFeatureEnabled;
  final GroupUser groupUser;
  final String actionButtonActionNotExecutedText;
  final String actionButtonActionExecutedText;
  final bool isActionButtonActionExecuted;
  final Function(GroupUser groupUser)? userRowTrailingAction;

  const UserCell(
      {Key? key,
      this.isAddingPeopleFeatureEnabled = false,
      required this.groupUser,
      this.actionButtonActionNotExecutedText = "",
      this.actionButtonActionExecutedText = "",
      this.isActionButtonActionExecuted = false,
      this.userRowTrailingAction = null})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(bottom: marginMedium),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22.0),
                child: Container(
                  height: 44.0,
                  width: 44.0,
                  child: groupUser.profileImageUrl == null
                      ? SizedBox.shrink()
                      : Image.network(groupUser.profileImageUrl!, fit: BoxFit.fill),
                  decoration: BoxDecoration(color: globalWhite, shape: BoxShape.circle),
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                groupUser.fullName,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(width: 16),
            Visibility(
              visible: isAddingPeopleFeatureEnabled,
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusXxs)),
                        side: BorderSide(color: isActionButtonActionExecuted ? kWhiteButtonBorderColor : kPrimaryColor),
                      ),
                    ),
                    elevation: MaterialStateProperty.all(0.0),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                        MaterialStateProperty.all(isActionButtonActionExecuted ? globalWhite : kPrimaryColor),
                  ),
                  onPressed: () {
                    if (userRowTrailingAction != null) {
                      userRowTrailingAction!(groupUser);
                    }
                  },
                  child: Text(
                    isActionButtonActionExecuted ? actionButtonActionExecutedText : actionButtonActionNotExecutedText,
                    style: TextStyle(
                        fontSize: 14, color: isActionButtonActionExecuted ? kMediumGrayExtraDark : globalWhite),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
