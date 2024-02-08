import 'package:flutter/widgets.dart';
import 'package:vodafone/features/home/presentation/view/widget/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [CustomAppBar()],
      ),
    );
  }
}
