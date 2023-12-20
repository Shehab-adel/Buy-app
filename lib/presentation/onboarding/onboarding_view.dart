import 'dart:core';

import 'package:buy/presentation/resources/app_assets.dart';
import 'package:buy/presentation/resources/app_constants.dart';
import 'package:buy/presentation/resources/app_string.dart';
import 'package:buy/presentation/resources/color_manager.dart';
import 'package:buy/presentation/resources/routes.dart';
import 'package:buy/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _sliderList = _getSliderData();

  List<SliderObject> _getSliderData() => [
        SliderObject(AppString.onBoardingTitle1, AppAssets.onBoardingLogo1,
            AppString.onBoardingSubTitle1),
        SliderObject(AppString.onBoardingTitle2, AppAssets.onBoardingLogo2,
            AppString.onBoardingSubTitle2),
        SliderObject(AppString.onBoardingTitle3, AppAssets.onBoardingLogo3,
            AppString.onBoardingSubTitle3),
        SliderObject(AppString.onBoardingTitle4, AppAssets.onBoardingLogo4,
            AppString.onBoardingSubTitle4)
      ];

  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: AppSize.s0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark),
      ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: _sliderList.length,
          onPageChanged: (index) {
            currentIndex = index;
            setState(() {});
          },
          itemBuilder: (context, index) {
            return OnBoardingPageWidget(_sliderList[index]);
          }),
      bottomSheet: Container(
        color: ColorManager.primary,
        height: AppSize.s100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.centerRight,
              color: ColorManager.white,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.loginRoute);
                },
                child: Text(
                  AppString.skip,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            _getBottomSheetWidget()
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheetWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: AppSize.s50,
          height: AppSize.s50,
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              onTap: () {
                _pageController.animateToPage(_getPreviousPage(),
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.bounceInOut);
              },
              child: SvgPicture.asset(AppAssets.leftArrowIc,
                  width: AppSize.s50, height: AppSize.s50),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          for (int i = 0; i < _sliderList.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppPadding.p20, horizontal: AppPadding.p8),
              child: _getSelectedCircle(i),
            )
        ]),
        SizedBox(
          width: AppSize.s50,
          height: AppSize.s50,
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              onTap: () {
                _pageController.animateToPage(_getNextPage(),
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.bounceInOut);
              },
              child: SvgPicture.asset(AppAssets.rightArrowIc,
                  width: AppSize.s50, height: AppSize.s50),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getSelectedCircle(int index) {
    if (currentIndex == index) {
      return SvgPicture.asset(AppAssets.hollowCircleIc);
    }
    return SvgPicture.asset(AppAssets.solidCircleIc);
  }

  int _getPreviousPage() {
    int previousIndex = --currentIndex;
    if (currentIndex == -1) {
      previousIndex = _sliderList.length - 1;
    }
    return previousIndex;
  }

  int _getNextPage() {
    int nextIndex = ++currentIndex;
    if (currentIndex == _sliderList.length) {
      nextIndex = 0;
    }
    return nextIndex;
  }
}

class OnBoardingPageWidget extends StatelessWidget {
  final SliderObject _sliderObject;

  const OnBoardingPageWidget(this._sliderObject, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSize.s40),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text("${_sliderObject.title}",
              style: Theme.of(context).textTheme.displayLarge,
              textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            "${_sliderObject.subTitle}",
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: AppSize.s60),
        SvgPicture.asset(_sliderObject.image!),
      ],
    );
  }
}

class SliderObject {
  String? title;
  String? subTitle;
  String? image;

  SliderObject(this.title, this.image, this.subTitle);
}
