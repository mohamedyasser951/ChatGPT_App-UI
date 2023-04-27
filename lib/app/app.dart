import 'package:flutter/material.dart';
import 'package:gpt_app/constants/constants.dart';
import 'package:gpt_app/screens/chat_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          appBarTheme: AppBarTheme(
              backgroundColor: cardColor,
              elevation: 4,
              iconTheme: const IconThemeData(color: Colors.white))),
              home:  ChatScreen(),
    );
  }
}
