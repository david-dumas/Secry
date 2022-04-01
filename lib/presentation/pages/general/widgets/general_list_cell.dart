import 'package:flutter/material.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/presentation/widgets/multi_avatar/avatar_painter.dart';

import 'package:secry/constants.dart';

class GeneralListCell extends StatelessWidget {
  final GeneralListCellInfoItem listCellInfoItem;

  const GeneralListCell({Key? key, required this.listCellInfoItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: globalWhite,
      child: Padding(
        padding: const EdgeInsets.only(bottom: marginMedium),
        child: Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
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
                  color: globalWhite,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
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
            SizedBox(width: 16),
            Align(alignment: Alignment.centerRight, child: Text(listCellInfoItem.timeIndication))
          ],
        ),
      ),
    );
  }
}
