import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gpt_app/constants/assets_services.dart';
import 'package:gpt_app/constants/constants.dart';
import 'package:gpt_app/services/bottom_sheet.dart';
import 'package:gpt_app/widgets/chate_widget.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final bool isLoading = true;
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChatGPT"),
        elevation: 2,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetServices.openaiLogo,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await Srvices.showModleBootomSheet(context: context);
              },
              icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          Flexible(
              child: ListView.builder(
            itemCount: chatMessages.length,
            itemBuilder: (context, index) => ChatWidget(
                msg: chatMessages[index]["msg"].toString(), index: index),
          )),
          if (isLoading) ...[
            const SpinKitThreeBounce(
              color: Colors.white,
              size: 18,
            ),
          ],
          const SizedBox(
            height: 12.0,
          ),
          Material(
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: searchController,
                    decoration: const InputDecoration.collapsed(
                        hintText: "How can I help you",
                        hintStyle: TextStyle(color: Colors.grey)),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
