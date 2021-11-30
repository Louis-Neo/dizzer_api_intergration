import 'package:flutter/material.dart';
import 'package:mbuzzer_ui/mbuzzer_ui.dart';
import 'package:mbuzzer_ui/src/shared/styles.dart';

class ButtonOne extends StatelessWidget {

  final String title;
  final bool disabled;
  final bool busy;
  final void Function()? onTap;
  final Widget? leading;
  final bool outline;

  const ButtonOne({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.onTap,
    this.leading
  }): outline = false, super(key: key);

  const ButtonOne.outline({
    required this.title,
    this.onTap,
    this.leading
  }) : disabled = false, busy = false, outline = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: !outline ? BoxDecoration(
          color: !disabled ? kcPrimaryColour : kcMediumGreyColour,
          borderRadius: BorderRadius.circular(10)
        ) : BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kcPrimaryColour,
            width: 1
          )
        ),
        child: !busy ? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if(leading != null) leading!,
            if(leading != null) const SizedBox(width: 5),
            Text(
              title,
              style: bodyText.copyWith(
                color: !outline ? Colors.white : kcPrimaryColour
              ),
            )
          ],
        ) : const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.white),
          strokeWidth: 3.5
        ),
      ),
    );
  }
}
