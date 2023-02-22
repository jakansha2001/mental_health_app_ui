import 'package:flutter/material.dart';

class BottomSheetHeaderTitle extends StatelessWidget {
  final String titleText;
  const BottomSheetHeaderTitle({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Icon(
          Icons.more_horiz,
          size: 30,
        )
      ],
    );
  }
}
