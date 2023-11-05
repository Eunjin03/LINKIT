import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/1안.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/linkit_logo.png'),
                IconButton(
                  onPressed: (){},
                  icon: Image.asset(
                    'assets/Kakao login.png',

                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  padding: EdgeInsets.zero,
                )
              ],
            ),
          ),
        ));
    ;
  }
}
