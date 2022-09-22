import 'package:flutter/material.dart';

Widget MenuButton({required bool isSelected, required String text}) {
  return Container(
    decoration: BoxDecoration(
        color: isSelected == true ? Colors.white : const Color(0xff25D366),
        borderRadius: const BorderRadius.all(Radius.circular(4))),
    child: RotatedBox(
      quarterTurns: 1,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected == true ? const Color(0xff25D366) : Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
