import 'package:blur/blur.dart';
import 'package:ezri/common_widgets/custom_button.dart';
import 'package:ezri/constants/text_font_style.dart';
import 'package:ezri/gen/assets.gen.dart';
import 'package:ezri/gen/colors.gen.dart';
import 'package:ezri/helpers/all_routes.dart';
import 'package:ezri/helpers/navigation_service.dart';
import 'package:ezri/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreenui extends StatelessWidget {
  const WelcomeScreenui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.images.welcomeScaffold.path),
          ),
        ),

        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child:
                      Container(
                        height: 45.h,
                        width: 84.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(90.r)),
                          border: Border.all(
                            color: AppColors.cFFFFFF.withOpacity(.3),
                            width: 2,
                          ),
                          gradient: RadialGradient(
                            colors: [
                              AppColors.cF5EDD7.withOpacity(.1),
                              AppColors.cFFFFFF.withOpacity(.2),
                            ],
                          ),
                        ),
                      ).blurred(
                        blur: 2,
                        blurColor: AppColors.cb68f5c,
                        borderRadius: BorderRadius.all(Radius.circular(90)),
                        overlay: Text(
                          "Skip",
                          style: TextFontStyle.textStylec18cF5EDD7Helve,
                        ),
                      ),
                ),

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Column(
                    children: [
                      Container(
                        width: 64.w,
                        height: 64.h,
                        decoration: BoxDecoration(
                          color: AppColors.cd7d1c2,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.cFFFFFF.withOpacity(.1),
                              spreadRadius: 3,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            Assets.images.handPrayer.path,
                            width: 28.w,
                            height: 28.h,
                          ),
                        ),
                      ),
                      UIHelper.verticalSpace(12.h),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "Your Daily\n",
                            style: TextFontStyle.textStylec32c3B230EHelve,
                            children: [
                              TextSpan(
                                text: "Faith ",
                                style: TextFontStyle.textStylec32c3B230EHelve,
                              ),
                              TextSpan(
                                text: "Companion",
                                style:
                                    TextFontStyle.textStylec32c3B230EHelveBold,
                              ),
                            ],
                          ),
                        ),
                      ),
                      UIHelper.verticalSpace(4.h),
                      Text(
                        textAlign: TextAlign.center,
                        "Reflect, grow, and draw closer to God — one moment at a time.",
                        style: TextFontStyle.textStylec16c8C7C68Helve,
                      ),
                      UIHelper.verticalSpace(46.h),
                      CustomButton(
                        onPressed: () {
                          NavigationService.navigateTo(Routes.onboardingOne);
                        },
                        title: "Begin Your Journey",
                      ),
                      UIHelper.verticalSpace(20.h),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "“Psalm 119:105",
                            style: TextFontStyle.textStylec14c238D1AHelveBold,
                            children: [
                              TextSpan(
                                text:
                                    " - Your word is a lamp to my feet and a light to my path.”",
                                style: TextFontStyle.textStylec14c238D1AHelve
                                    .copyWith(fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
