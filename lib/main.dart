import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/models/home.dart';
import 'package:learn_getx/models/state.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ).copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0.0,
        ),
      ),
      home: LearnState(),
      getPages: [
        GetPage(name: '/pageone', page: () => const One()),
        GetPage(name: '/pagetwo', page: () => const Two()),
        GetPage(name: '/pagethree', page: () => const Three())
      ],
    );
  }
}
