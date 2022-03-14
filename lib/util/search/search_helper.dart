import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/util/date_and_time/text_from_date.dart';

class SearchHelper {
  List<GeneralListCellInfoItem> getFilteredGeneralListCellItems(
      List<GroupOverviewRowInfo> groupsInfoToFilter, String filterText) {
    if (filterText.length < 1 || filterText == '') {
      return groupsInfoToFilter
          .map((groupInfoItem) => GeneralListCellInfoItem(
              id: groupInfoItem.id,
              title: groupInfoItem.title,
              description: groupInfoItem.lastChatMessage?.text ?? '',
              timeIndication: groupInfoItem.lastChatMessage?.createdAt?.getTimeAgoTimeIndication() ?? '',
              svg: groupInfoItem.svg))
          .toList();
    } else {
      final filteredGroupItems = groupsInfoToFilter
          .where((groupsInfo) =>
              groupsInfo.title.toLowerCase().contains(filterText.toLowerCase()) ||
              (groupsInfo.lastChatMessage?.createdAt?.getTimeAgoTimeIndication() ?? '')
                  .toLowerCase()
                  .contains(filterText.toLowerCase()))
          .toList();
      return filteredGroupItems
          .map((groupInfoItem) => GeneralListCellInfoItem(
              id: groupInfoItem.id,
              title: groupInfoItem.title,
              description: groupInfoItem.lastChatMessage?.text ?? '',
              timeIndication: groupInfoItem.lastChatMessage?.createdAt?.getTimeAgoTimeIndication() ?? '',
              svg: groupInfoItem.svg))
          .toList();
    }
  }

  List<GeneralListCellInfoItem> getFilteredGeneralListCellInfoItems(
      List<GeneralListCellInfoItem> generalListCellsToFilter, String filterText) {
    if (filterText.length < 1 || filterText == '') {
      return generalListCellsToFilter
          .map((generalListCellInfoItem) => GeneralListCellInfoItem(
              id: generalListCellInfoItem.id,
              title: generalListCellInfoItem.title,
              description: generalListCellInfoItem.description,
              timeIndication: generalListCellInfoItem.timeIndication,
              svg: generalListCellInfoItem.svg))
          .toList();
    } else {
      final filteredGroupItems = generalListCellsToFilter
          .where((generalListCellInfoItem) =>
              generalListCellInfoItem.title.toLowerCase().contains(filterText.toLowerCase()) ||
              generalListCellInfoItem.description.toLowerCase().contains(filterText.toLowerCase()))
          .toList();
      return filteredGroupItems
          .map((generalListCellInfoItem) => GeneralListCellInfoItem(
              id: generalListCellInfoItem.id,
              title: generalListCellInfoItem.title,
              description: generalListCellInfoItem.description,
              timeIndication: generalListCellInfoItem.timeIndication,
              svg: generalListCellInfoItem.svg))
          .toList();
    }
  }
}
