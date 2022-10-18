import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/util/avatars/avatar_helper.dart';
import 'package:test/test.dart';

void main() {
  List<GroupOverviewRowInfo> infoRows = [
    GroupOverviewRowInfo(id: "1", title: "1", createdAt: DateTime.now()),
    GroupOverviewRowInfo(id: "1", title: "1", createdAt: DateTime.now())
  ];

  test('Should return true when _generateAvatarSvgs executes succesfully without throwing', () async {
    final result = await AvatarHelper()?.addSvgToGroupRowsInfo(infoRows);
    expect(result, true);
  });
}
