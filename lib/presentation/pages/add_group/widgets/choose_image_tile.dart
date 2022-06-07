import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:secry/constants.dart';
import 'package:secry/util/dialogs/modal_bottom_sheet_helper.dart';

class ChooseImageTile extends StatelessWidget {
  final BuildContext mainContext;
  final Image? groupImage;
  final ImagePicker _imagePicker = ImagePicker();
  final String addPictureText;
  final Function(Image image) imageUpdated;
  final Function imageDeleted;

  ChooseImageTile(
      {Key? key,
      required this.mainContext,
      required this.groupImage,
      required this.addPictureText,
      required Function(Image image) this.imageUpdated,
      required Function this.imageDeleted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameraButtonWidthHeight = max(MediaQuery.of(mainContext).size.width * 0.22, 66).toDouble();

    return GestureDetector(
      child: Container(
        width: MediaQuery.of(mainContext).size.width - 40,
        height: max(150, MediaQuery.of(context).size.height * 0.25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: kMediumGrayV2, width: 1.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            child: groupImage != null
                ? Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: groupImage!.image,
                        fit: BoxFit.fitWidth, // TODO add possibility to scroll to part of image to use
                      ),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: cameraButtonWidthHeight,
                          height: cameraButtonWidthHeight,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(cameraButtonWidthHeight / 2),
                          ),
                          child: Icon(
                            Icons.camera_alt_rounded,
                            size: cameraButtonWidthHeight * 0.44,
                            color: globalWhite,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          addPictureText,
                          style: TextStyle(fontSize: 14.0),
                        )
                      ],
                    ),
                  ),
          ),
        ),
      ),
      onTap: () {
        ModalBottomSheetHelper().showModalBottomShowWithImagePickerOptions(mainContext,
            groupImage: groupImage, imagePicker: _imagePicker, imageUpdated: (Image image) {
          imageUpdated(image);
        }, imageDeleted: () {
          imageDeleted();
        });
      },
    );
  }
}
