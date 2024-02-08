import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:vodafone/core/utils/app_router.dart';
import 'package:vodafone/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assetsdata.logo2, height: 40),
        const Spacer(),
        const Text("Vodafone",
            style: TextStyle(
                color: Color(0xffE60000),
                fontSize: 18,
                fontWeight: FontWeight.w500)),
        const Spacer(),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchview);
            },
            icon: const Icon(Icons.search))
      ],
    );
  }
}
