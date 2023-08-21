import 'package:app2/constant/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final void Function() handleClick;
  final bool loading;
  const MyButton({super.key, required this.handleClick, required this.loading});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.handleClick();
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColors.baseColor,
        ),
        child: widget.loading
            ? const Center(
                child: CircularProgressIndicator(
                color: Color(0xffffffff),
              ))
            : Center(
                child: Text(
                  "Log In",
                  style: TextStyle(
                      color: MyColors.mainColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
              ),
      ),
    );
  }
}
