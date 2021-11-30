import 'package:flutter/material.dart';
import 'package:mbuzzer_ui/mbuzzer_ui.dart';

class ViewInputField extends StatelessWidget {

  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final void Function()? trailingTap;

  ViewInputField({
    Key? key,
    required this.controller,
    this.placeholder = "",
    this.leading,
    this.trailing,
    this.trailingTap,
    this.password = false
  }) : super(key: key);

  final kBorderRadius = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8)
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(height: 2),
      obscureText: password,
      decoration: InputDecoration(
        hintText: placeholder,
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        filled: true,
        fillColor: kcVeryLightGreyColour,
        prefixIcon: leading,
        suffixIcon: trailing != null ? GestureDetector(
          onTap: trailingTap,
          child: trailing,
        ) : null,
        border: kBorderRadius.copyWith(
          borderSide: const BorderSide(color: kcLightGreyColour)
        ),
        errorBorder: kBorderRadius.copyWith(
          borderSide: const BorderSide(color: Colors.red)
        ),
        focusedBorder: kBorderRadius.copyWith(
          borderSide: const BorderSide(color: kcPrimaryColour)
        ),
        enabledBorder: kBorderRadius.copyWith(
          borderSide: const BorderSide(color: kcLightGreyColour)
        )
      ),
    );
  }
}
