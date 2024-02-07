import 'dart:async';

import 'package:flutter/material.dart';

import '../home_view.dart';
import 'components/animated_image_container.dart';
import 'components/animated_loading_text.dart';
class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeView(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(width: 100,height: 100,),


            SizedBox(height: 20,),

            SizedBox(
                height: 100,
                width: 100,
                child: AnimatedLoadingText()),

          ],
        ),
      ),
    );
  }
}
