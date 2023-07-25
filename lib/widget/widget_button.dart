import 'package:app2/constant/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function() handleClick;
  const MyButton({super.key, required this.handleClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        handleClick();
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColors.baseColor,
        ),
        child: Center(
            child: Text(
          "Log In",
          style: TextStyle(
              color: MyColors.mainColor,
              fontWeight: FontWeight.w700,
              fontSize: 17),
        )),
      ),
    );
  }
}
