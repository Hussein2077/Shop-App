import 'package:flutter/material.dart';
import 'package:shop_app/constant/app_routes.dart';
import 'package:shop_app/constant/colors.dart';
import 'package:shop_app/view/widgets/build_boarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/on_boardin_model.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController boardController = PageController();
  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/onboardingone.png',
      title: 'On Board 1 Title',
      body: 'On Board 1 Body',
    ),
    BoardingModel(
      image: 'assets/images/onboardingtwo.png',
      title: 'On Board 2 Title',
      body: 'On Board 2 Body',
    ),
    BoardingModel(
      image: 'assets/images/onboardingthree.png',
      title: 'On Board 3 Title',
      body: 'On Board 3 Body',
    ),
  ];
  bool last = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(icon: Icon(Icons.skip_next,
            color: AppColors.teals,
              size: 40,
            ),onPressed: (){
              Navigator.pushNamed(context, AppRoutes.loginPage);

            },),
          )

        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                onPageChanged: (i) {
                  if (i == boarding.length - 1) {
                    setState(() {
                      last = true;
                    });
                  } else {
                    setState(() {
                      last = false;
                    });
                  }
                },
                controller: boardController,
                physics: const BouncingScrollPhysics(),
                itemCount: boarding.length,
                itemBuilder: (context, i) {
                  return buildBoardingItem(boarding[i], context);
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 100,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: SmoothPageIndicator(
                    controller: boardController,
                    count: boarding.length,
                    effect:   ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      dotHeight: 10,
                      activeDotColor: AppColors.teals,
                      expansionFactor: 3,
                      dotWidth: 10,
                      spacing: 5.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 90,
                ),
                FloatingActionButton(
                  onPressed: () {
                    if (last) {
                      Navigator.pushNamed(context, AppRoutes.loginPage);
                    }
                    boardController.nextPage(
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.fastLinearToSlowEaseIn);
                  },
                  child: const Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// Column(
// children: [
// Center(
// child: Image.asset(
// 'assets/images/onboardingone.png',
// scale: .6,
// )),
// const SizedBox(
// height: 25,
// ),
// Text(
// 'Find your favorite product',
// style: Theme.of(context).textTheme.headlineSmall,
// ),
// const SizedBox(
// height: 25,
// ),
// Text(
// 'Find your favorite product',
// style: Theme.of(context)
// .textTheme
//     .bodyLarge!
// .copyWith(color: Colors.black54),
// ),  const SizedBox(
// height: 50,
// ),
// SmoothPageIndicator(
// controller: boardController,
// count: 3,
// ),
// ],
// )
