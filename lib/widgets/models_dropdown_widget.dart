import 'package:flutter/material.dart';
import 'package:gpt_app/constants/constants.dart';

class ModelsDropDownWidget extends StatefulWidget {
  const ModelsDropDownWidget({super.key});

  @override
  State<ModelsDropDownWidget> createState() => _ModelsDropDownWidgetState();
}

class _ModelsDropDownWidgetState extends State<ModelsDropDownWidget> {
  String currentModel = "model1";

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        items: getModelsItem,
        value: currentModel,
        onChanged: (val) {
          setState(() {
            currentModel = val!;
          });
        });
  }
}
