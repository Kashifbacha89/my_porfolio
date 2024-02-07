import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/res/utils/app_assets.dart';
import 'package:my_personal_portfolio/res/utils/app_colors.dart';
import 'package:my_personal_portfolio/res/utils/app_text_style.dart';
import 'package:my_personal_portfolio/res/utils/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Portfolio',
                style: AppTextStyle.headerTextStyle(),
              ),
              const Spacer(),
              Text(
                'Home',
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'About',
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Services',
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Portfolio',
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text('Contact', style: AppTextStyle.headerTextStyle()),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * .03,
              left: size.width * .03,
              right: size.width * .03),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, It\'s Me',
                        style:
                            AppTextStyle.monteseratStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Muhammad Kashif',
                        style: AppTextStyle.headingStyle(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            'And I\'m a ',
                            style: AppTextStyle.monteseratStyle(
                                color: Colors.white),
                          ),
                          AnimatedTextKit(animatedTexts: [
                            TyperAnimatedText(
                              'Flutter Developer',
                              textStyle: AppTextStyle.monteseratStyle(
                                  color: Colors.lightBlue),
                            ),
                            TyperAnimatedText(
                              'Software Engineer',
                              textStyle: AppTextStyle.monteseratStyle(
                                  color: Colors.lightBlue),
                            ),
                          ]),
                        ],
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: size.width*0.5,
                        child: Text(
                          "In publishing and graphic design, Lorem ipsum is a placeholder"
                          'text commonly used to demonstrate the visual form of a document'
                              ' or a typeface without relying on meaningful content."',
                          style: AppTextStyle.normalStyle(),
                        ),
                      ),
                      const SizedBox(height: 22),
                      Row(
                        children: [
                          buildSocialButton(assets: AppAssets.facebook),
                          Constants.sizedBox(width: 10),
                          buildSocialButton(assets: AppAssets.twitter),
                          Constants.sizedBox(width: 10),
                          buildSocialButton(assets: AppAssets.linkedIn),
                          Constants.sizedBox(width: 10),
                          buildSocialButton(assets: AppAssets.insta),
                          Constants.sizedBox(width: 10),
                          buildSocialButton(assets: AppAssets.github),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  CircleAvatar buildSocialButton({required String assets}) {
    return CircleAvatar(
      maxRadius: 22,
      backgroundColor: AppColors.themeColor,
      child: CircleAvatar(
        maxRadius: 20,
        backgroundColor: AppColors.bgColor,
        child: Image.network(
          assets,
          width: 24,
          height: 20,
        ),
      ),
    );
  }

}
