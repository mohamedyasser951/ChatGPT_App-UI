import 'package:flutter/material.dart';
import 'package:gpt_app/constants/constants.dart';
import 'package:gpt_app/widgets/models_dropdown_widget.dart';
import 'package:gpt_app/widgets/text_widget.dart';

class Srvices {
 static Future showModleBootomSheet({required BuildContext context}) async {
    return showModalBottomSheet(
      context: context,
      backgroundColor: scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            TextWidget(
              label: "Chosen Model:",
              fontSize: 16,
            ),
            SizedBox(width: 10,),
            Flexible(flex: 2, child: ModelsDropDownWidget())
          ],
        ),
      ),
    );
  }
}
