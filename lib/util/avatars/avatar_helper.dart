import 'dart:math';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/presentation/widgets/multi_avatar/svg_wrapper.dart';

class AvatarHelper {
  Future<void> addSvgToGroupRowsInfo(List<GroupOverviewRowInfo> infoRows) async {
    final listWithSvgs = await _generateAvatarSvgs(infoRows.length);

    for (int i = 0; i < infoRows.length; i++) {
      if (listWithSvgs.length > i) {
        infoRows[i].svg = listWithSvgs[i];
      }
    }
  }

  Future<List<DrawableRoot?>> _generateAvatarSvgs(int amountOfAvatars) async {
    final randomizer = new Random();
    final List<DrawableRoot?> avatarDrawables = [];

    for (int i = 0; i < amountOfAvatars; i++) {
      String avatarSvg = multiavatar(
          DateTime(randomizer.nextInt(2022), randomizer.nextInt(12), randomizer.nextInt(28)).toIso8601String());

      final generatedLogo = await SvgWrapper(avatarSvg).generateLogo();
      avatarDrawables.insert(0, generatedLogo);
    }

    return avatarDrawables;
  }
}
