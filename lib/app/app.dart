import 'package:flutter/material.dart';
import 'package:gpt_app/Providers/models_provider.dart';
import 'package:gpt_app/constants/constants.dart';
import 'package:gpt_app/screens/chat_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<ModelsProvider>(
            create: (context) => ModelsProvider(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: scaffoldBackgroundColor,
              appBarTheme: AppBarTheme(
                  backgroundColor: cardColor,
                  elevation: 4,
                  iconTheme: const IconThemeData(color: Colors.white))),
          home: ChatScreen(),
        ));
  }
}
