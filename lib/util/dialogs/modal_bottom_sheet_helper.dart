import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:secry/application/add_group/add_group_page_bloc.dart';
import 'package:secry/constants.dart';

class ModalBottomSheetHelper {
  showModalBottomShowWithImagePickerOptions(BuildContext mainContext,
      {Image? groupImage, required ImagePicker imagePicker}) {
    showMaterialModalBottomSheet(
      context: mainContext,
      builder: (context) {
        return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
          final bottomSheetButtonWidth = MediaQuery.of(context).size.width;
          final bottomSheetButtonHeight = 55.0;

          return Wrap(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: bottomSheetButtonWidth,
                      height: bottomSheetButtonHeight,
                      child: TextButton(
                        onPressed: () async {
                          try {
                            final cameraImage = await imagePicker.pickImage(source: ImageSource.camera);
                            if (cameraImage != null) {
                              final image = Image.file(File(cameraImage.path));
                              mainContext.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupImageUpdated(image));

                              Navigator.of(context).pop(context);
                            } else {
                              // TODO log cameraImage is null
                            }
                          } catch (e) {
                            // TODO log pick image error
                          }
                        },
                        child: Text(
                          tr('action_make_picture'),
                        ),
                      ),
                    ),
                    Container(
                      width: bottomSheetButtonWidth,
                      height: bottomSheetButtonHeight,
                      child: TextButton(
                        onPressed: () async {
                          try {
                            final XFile? galleryImage = await imagePicker.pickImage(source: ImageSource.gallery);
                            if (galleryImage != null) {
                              final image = Image.file(File(galleryImage.path));
                              mainContext.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupImageUpdated(image));

                              Navigator.of(context).pop(context);
                            } else {
                              // TODO log galleryImage is null
                            }
                          } catch (e) {
                            // TODO log image from gallery error
                          }
                        },
                        child: Text(
                          tr('action_choose_picture'),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: groupImage != null,
                      child: Container(
                        width: bottomSheetButtonWidth,
                        height: bottomSheetButtonHeight,
                        child: TextButton(
                          onPressed: () async {
                            mainContext.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupImageDeleted());
                            Navigator.of(context).pop(context);
                          },
                          child: Text(
                            tr('action_delete_picture'),
                            style: TextStyle(color: cancelColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              )
            ],
          );
        });
      },
    );
  }
}
