import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/constants.dart';

import '../../../../application/report_dialog/report_dialog_bloc.dart';
import '../../../../injection.dart';

class ReportAlertDialog extends StatefulWidget {
  const ReportAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<ReportAlertDialog> createState() => _ReportAlertDialogState();
}

class _ReportAlertDialogState extends State<ReportAlertDialog> {
  List<Text> reports = [
    Text(tr("report_dont_want_to_see_it")),
    Text(tr("report_nudity_or_sexual_content")),
    Text(tr("report_harassment_or_hate_speecht")),
    Text(tr("report_threatening_violent_or_concerning")),
    Text(tr("report_sale_or_use_of_drugs")),
    Text(tr("report_misleading_or_harmful_information"))
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ReportDialogBloc>()..add(const ReportDialogEvent.initialized()),
      child: BlocBuilder<ReportDialogBloc, ReportDialogState>(
        builder: (context, state) {
          return AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(tr('report_title'),
                      style: TextStyle(
                        fontSize: fontSizeXxl,
                      ),
                      textAlign: TextAlign.right),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: kMediumGrayV2,
                    ),
                  ),
                ),
              ],
            ),
            content: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(tr("why_do_you_want_to_report"),
                      style: TextStyle(fontSize: fontSizeSmall, color: kDarkGrayTextColor),
                      textAlign: TextAlign.center),
                  ListView.builder(
                    itemCount: reports.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: reports[index],
                        selected: index == state.selectedReportTile,
                        selectedTileColor: appIconColorBlue1,
                        onTap: () {
                          context.read<ReportDialogBloc>().add(ReportDialogEvent.reportedTileExcecuted(index));
                        },
                      );
                    },
                    shrinkWrap: true,
                  )
                ],
              ),
            ),
            actions: <Widget>[
              Center(
                  child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 1,
                child: TextButton(
                    style: TextButton.styleFrom(foregroundColor: globalWhite, backgroundColor: kPrimaryColor),
                    onPressed: () {
                      //TODO submit report
                    },
                    child: Text(
                      tr("submit_button"),
                      style: TextStyle(fontSize: fontSizeMedium),
                    )),
              ))
            ],
          );
        },
      ),
    );
  }
}
