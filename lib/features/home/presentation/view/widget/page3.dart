import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:vodafone/features/home/presentation/view/widget/custom_item.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomItem(
          text1: "ميجا",
          text2: "500 ",
          text3: "جنيه",
          text4: "7",
          onPressed: () {
            _phoneCall("*2307#");
          },
        ),
        CustomItem(
          text1: "ميجا",
          text2: "1500 ",
          text3: "جنيه",
          text4: "15",
          onPressed: () {
            _phoneCall("*2315#");
          },
        ),
        CustomItem(
          text1: "ميجا",
          text2: "2800 ",
          text3: "جنيه",
          text4: "25",
          onPressed: () {
            _phoneCall("*2325#");
          },
        ),
        CustomItem(
          text1: "ميجا",
          text2: "4500 ",
          text3: "جنيه",
          text4: "35",
          onPressed: () {
            _phoneCall("*2335#");
          },
        ),
        CustomItem(
          text1: "ميجا",
          text2: "6000 ",
          text3: "جنيه",
          text4: "45",
          onPressed: () {
            _phoneCall("*2345*");
          },
        ),
        CustomItem(
          text1: "ميجا",
          text2: "9500 ",
          text3: "جنيه",
          text4: "65",
          onPressed: () {
            _phoneCall("*2365#");
          },
        ),
        CustomItem(
          text1: "ميجا",
          text2: "1000 ",
          text3: "جنيه",
          text4: "10",
          onPressed: () {
            _phoneCall("*2000*3300#");
          },
        ),
        CustomItem(
          text1: "ميجا",
          text2: "450 ",
          text3: "جنيه",
          text4: "35",
          onPressed: () {
            _phoneCall("*2335#");
          },
        ),
      ],
    );
  }

  void _phoneCall(String phoneNumber) async {
    await FlutterPhoneDirectCaller.callNumber(phoneNumber);
  }
}
