import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vodafone/core/utils/app_router.dart';
import 'package:vodafone/core/utils/assets.dart';

class BodySplachView extends StatefulWidget {
  const BodySplachView({super.key});

  @override
  State<BodySplachView> createState() => _BodySplachViewState();
}

class _BodySplachViewState extends State<BodySplachView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToHome();

    @override
    void dispose() {
      super.dispose();

      animationController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red, Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(Assetsdata.logo2, width: 150),
          const SizedBox(
            height: 20,
          ),
          AnimatedBuilder(
              animation: slidingAnimation,
              builder: (context, _) {
                return SlideTransition(
                  position: slidingAnimation,
                  child: const Text(
                    'Welcome to vodafone',
                    style: TextStyle(
                        color: Color(0xffE60000),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                );
              }),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 15), end: const Offset(0, 0))
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).push(AppRouter.kHomeview);
      },
    );
  }
}
