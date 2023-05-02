import 'package:flutter/material.dart';
import 'package:gpt_app/Models/models_model.dart';
import 'package:gpt_app/Providers/models_provider.dart';
import 'package:gpt_app/constants/constants.dart';
import 'package:gpt_app/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class ModelsDropDownWidget extends StatefulWidget {
  const ModelsDropDownWidget({super.key});

  @override
  State<ModelsDropDownWidget> createState() => _ModelsDropDownWidgetState();
}

class _ModelsDropDownWidgetState extends State<ModelsDropDownWidget> {
  @override
  Widget build(BuildContext context) {
    final modelsProvider = Provider.of<ModelsProvider>(context);
    return FutureBuilder<List<Data>?>(
        future: modelsProvider.getAllModels(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const SizedBox(
              height: 20,
              width: 20,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          return snapshot.data!.isEmpty || snapshot.data == null
              ? const SizedBox.shrink()
              : FittedBox(
                  child: DropdownButton<String>(
                      dropdownColor: scaffoldBackgroundColor,
                      value: modelsProvider.currentModel,
                      items: List<DropdownMenuItem<String>>.generate(
                          snapshot.data!.length,
                          (index) => DropdownMenuItem<String>(
                                value: snapshot.data![index].id,
                                child: TextWidget(
                                    label: snapshot.data![index].id.toString(),
                                    fontSize: 18),
                              )).toList(),
                      onChanged: (val) {
                        modelsProvider.changeModel(model: val!);
                      }),
                );
        });
  }
}
