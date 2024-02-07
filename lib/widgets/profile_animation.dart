import 'package:flutter/material.dart';

import '../res/utils/app_assets.dart';
class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({Key? key}) : super(key: key);

  @override
  State<ProfileAnimation> createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation>  with SingleTickerProviderStateMixin{
  late final AnimationController _controller;
  late Animation<Offset> _animation;
  @override
  void initState() {
    _controller=AnimationController(vsync: this)..repeat(reverse: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SlideTransition(
        position: _animation,
    child: Image.network(AppAssets.personal1,
      width: 360,
      height: 390,
    ),
    );
  }
}
