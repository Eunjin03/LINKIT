import 'package:flutter/material.dart';

import 'intro_screen.dart';
import 'login_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FutureBuilder(
          future: Future.delayed(
              const Duration(seconds: 2), () => "Intro Completed."),
          builder: (context, snapshot) {
            return AnimatedSwitcher(

                duration: const Duration(milliseconds: 1000),
                child: _splashLoadingWidget(snapshot)
            );
          },
        )
    );
  }
}

Widget _splashLoadingWidget(AsyncSnapshot<Object?> snapshot) {
  if(snapshot.hasError) {
    return const Text("Error!!");
  } else if(snapshot.hasData) {
    return const MyHomePage();
  } else {
    return const IntroScreen();
  }
}