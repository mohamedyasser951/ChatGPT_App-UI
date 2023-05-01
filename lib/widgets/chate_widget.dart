import 'package:flutter/material.dart';
import 'package:gpt_app/constants/assets_services.dart';
import 'package:gpt_app/constants/constants.dart';
import 'package:gpt_app/widgets/text_widget.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key, required this.msg, required this.index});
  final String msg;
  final int index;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: widget.index == 0 ? scaffoldBackgroundColor : cardColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.index == 0
                        ? AssetServices.person
                        : AssetServices.chatLogo,
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(child: TextWidget(label: widget.msg)),
                  widget.index == 0
                      ? Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.thumb_up_alt_outlined,color: Colors.white,)),
                            const SizedBox(
                              width: 4,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.thumb_down_alt_outlined,color: Colors.white,)),
                          ],
                        )
                      : const SizedBox.shrink()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
