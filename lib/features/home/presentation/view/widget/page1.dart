import 'package:flutter/widgets.dart';
import 'package:vodafone/core/widget/cutom_buttom.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          CustomButtom(
            text: "سلفني شكرا ",
            onPressed: () {
              _phoneCall("*3#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: "لمعرفه رصيدك",
            onPressed: () {
              _phoneCall("*868*1#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: " معرفه رقم الهاتف ",
            onPressed: () {
              _phoneCall("*878#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: " لمعرفه التاريخ والساعه ",
            onPressed: () {
              _phoneCall("*100#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: "اخر رقم حاول الاتصال بك",
            onPressed: () {
              _phoneCall("*150#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: " لتشغيل خدمه التجوال ",
            onPressed: () {
              _phoneCall("*858*5#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: "لتشغيل خدمات الانترنت  ",
            onPressed: () {
              _phoneCall("*888*4#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: "لمعرفه عدد الفلكسات المتبقيه والستهلكه",
            onPressed: () {
              _phoneCall("*60#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: " تجديد الباقه ",
            onPressed: () {
              _phoneCall("*225#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: " معرفه الرصيد ",
            onPressed: () {
              _phoneCall("*868*1#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: " تفعيل خاصيه الانتظار ",
            onPressed: () {
              _phoneCall("*43#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            text: " معرفه نقاط فودافون ",
            onPressed: () {
              _phoneCall("*818*2#");
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  void _phoneCall(String phoneNumber) async {
    await FlutterPhoneDirectCaller.callNumber(phoneNumber);
  }
}
