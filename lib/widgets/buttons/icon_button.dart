import 'package:flutter/material.dart';
import 'package:nom_order/models/theme/theme_setting.dart';
import 'package:nom_order/widgets/buttons/custom_button.dart';

class CustomIconButton extends StatelessWidget {
  final ThemeSetting themeSetting;
  final VoidCallback onPressed;
  final double? fontSize;
  final EdgeInsets? padding;
  final IconData icon;
  const CustomIconButton({
    super.key,
    required this.themeSetting,
    required this.onPressed,
    this.fontSize,
    this.padding,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        onPressed: onPressed,
        borderRadius: BorderRadius.circular(100),
        shapeBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: themeSetting.accent,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(
            icon,
            size: 24,
            color: themeSetting.bodyOnColor,
          ),
        ),
      ),
    );
  }
}
