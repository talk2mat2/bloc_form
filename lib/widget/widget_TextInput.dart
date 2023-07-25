// ignore: file_names
import "package:app2/constant/colors.dart";
import "package:flutter/material.dart";

class MtextInput extends StatelessWidget {
  final String title;
  final void Function(String) handleChange;
  const MtextInput({super.key, this.title = "", required this.handleChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.3),
          border: Border.all(
              width: 2, style: BorderStyle.solid, color: MyColors.light)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: TextField(
          onChanged: handleChange,
          decoration: InputDecoration(
              hintText: title,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}
