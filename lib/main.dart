import 'package:flutter/material.dart';
import 'package:meditation_app/pages/choose_topic_page.dart';
import 'package:meditation_app/pages/get_started_page.dart';
import 'package:meditation_app/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kColorPrimary,
        useMaterial3: true,
      ),
      initialRoute: '$GetStartedPage',
      routes: {
        '$GetStartedPage': (_) => const GetStartedPage(),
        '$ChooseTopicPage': (_) => const ChooseTopicPage(),
      },
    );
  }
}
