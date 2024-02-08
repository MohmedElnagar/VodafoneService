import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:vodafone/features/home/presentation/view/widget/custom_item.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomItem(
          text1: "فلكس",
          text2: "1000 ",
          text3: "جنيه",
          text4: "30",
          onPressed: () {
            _phoneCall("*030#");
          },
        ),
        CustomItem(
          text1: "فلكس",
          text2: "2000 ",
          text3: "جنيه",
          text4: "45",
          onPressed: () {
            _phoneCall("*045#");
          },
        ),
        CustomItem(
          text1: "فلكس",
          text2: "3000 ",
          text3: "جنيه",
          text4: "70",
          onPressed: () {
            _phoneCall("*070#");
          },
        ),
        CustomItem(
          text1: "فلكس",
          text2: "5500 ",
          text3: "جنيه",
          text4: "100",
          onPressed: () {
            _phoneCall("*0100#");
          },
        ),
        CustomItem(
          text1: "فلكس",
          text2: "13000 ",
          text3: "جنيه",
          text4: "200",
          onPressed: () {
            _phoneCall("*02000#");
          },
        ),
      ],
    );
  }

  void _phoneCall(String phoneNumber) async {
    await FlutterPhoneDirectCaller.callNumber(phoneNumber);
  }
}
