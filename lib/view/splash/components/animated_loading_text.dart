import 'package:flutter/material.dart';
class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width*1;
    final height=MediaQuery.sizeOf(context).height*1;
    return   SizedBox(
      width: width * 5,
      child: TweenAnimationBuilder(duration: const Duration(seconds: 1),builder: (context, value, child) => Column(
        children: [
          LinearProgressIndicator(
            backgroundColor: Colors.black,
            color: Colors.deepPurpleAccent,
            value: value,
          ),
           SizedBox(height: height*.02,),
          Text(
            '${(value * 100).toInt()}%',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,shadows: [
            Shadow(color: Colors.pink,blurRadius: 10 , offset: Offset(2,2)),
            Shadow(color: Colors.blue,blurRadius: 10 , offset: Offset(-2,-2)),
          ]),)
        ],
      ), tween: Tween(begin: 0.0,end: 1.0),),
    );
  }
}
