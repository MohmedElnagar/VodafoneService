import 'package:flutter/material.dart';
import 'package:vodafone/core/utils/style.dart';

class CustomItem extends StatelessWidget {
  const CustomItem(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text4,
      required this.text3,
      this.onPressed});
  final String text1, text2;
  final String text3, text4;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Colors.black.withOpacity(.4), width: 1),
                    right: BorderSide(
                        color: Colors.black.withOpacity(.4), width: 2),
                    left: BorderSide(
                        color: Colors.black.withOpacity(.4), width: 2))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text1,
                      style: const TextStyle(
                          color: Color(0xffE60000),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      text2,
                      style: const TextStyle(
                          color: Color(0xffE60000),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text3,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      text4,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 55),
                  backgroundColor: const Color.fromARGB(255, 31, 29, 29),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35)))),
              child: Text(
                "اشتراك",
                style: Style.textstyle18.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              )),
        ],
      ),
    );
  }
}
