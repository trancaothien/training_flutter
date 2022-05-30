import 'package:flutter/material.dart';
import 'package:training_flutter/config/constants/app_colors.dart';

class WidgetInput extends StatelessWidget {
  const WidgetInput({
    Key? key,
    required this.hint,
  }) : super(key: key);
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: inputBG,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
      ),
    );
  }
}
