// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/presentation/widgets/multi_avatar/avatar_painter.dart';

import 'package:secry/constants.dart';

class GeneralListCell extends StatelessWidget {
  final GeneralListCellInfoItem listCellInfoItem;

  const GeneralListCell({Key? key, required this.listCellInfoItem}) : super(key: key);

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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
              child: Container(
                height: 44.0,
                width: 44.0,
                child: listCellInfoItem.svg == null
                    ? SizedBox.shrink()
                    : CustomPaint(
                        painter: AvatarPainter(listCellInfoItem.svg!, Size(44.0, 44.0)),
                        child: Container(),
                      ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listCellInfoItem.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    listCellInfoItem.description,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Align(alignment: Alignment.centerRight, child: Text(listCellInfoItem.timeIndication))
          ],
        ),
      ),
    );
  }
}
