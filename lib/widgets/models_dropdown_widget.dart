import 'package:flutter/material.dart';
import 'package:gpt_app/constants/constants.dart';
import 'package:gpt_app/widgets/text_widget.dart';

class ModelsDropDownWidget extends StatefulWidget {
  const ModelsDropDownWidget({super.key});

  @override
  State<ModelsDropDownWidget> createState() => _ModelsDropDownWidgetState();
}

class _ModelsDropDownWidgetState extends State<ModelsDropDownWidget> {
  List<String> models = [
    'Model1',
    'Model2',
    'Model3',
    'Model4',
    'Model5',
    'Model6',
  ];

  String currentModel = "Model1";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: scaffoldBackgroundColor,
        value: currentModel,
        items: models
            .map((String e) => DropdownMenuItem<String>(
                  value: e,
                  child: TextWidget(label: e, fontSize: 18),
                ))
            .toList(),
        onChanged: (val) {
          setState(() {
            currentModel = val!;
          });
        });
  }
}
