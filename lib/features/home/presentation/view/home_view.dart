import 'package:flutter/material.dart';

import 'package:vodafone/features/home/presentation/view/widget/page1.dart';
import 'package:vodafone/features/home/presentation/view/widget/page2.dart';
import 'package:vodafone/features/home/presentation/view/widget/page3.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Vodafone",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffE60000),
          bottom: const TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              child: Text(
                "خدمات الشبكة",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Tab(
              child: Text(
                "باقات كنترول",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Tab(
              child: Text(
                "باقات النت",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          Page1(),
          Page2(),
          Page3(),
        ]),
      ),
    );
  }
}
