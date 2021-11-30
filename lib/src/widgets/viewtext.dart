import 'package:flutter/material.dart';
import 'package:mbuzzer_ui/src/shared/styles.dart';

import '../../mbuzzer_ui.dart';

class ViewText extends StatelessWidget {

  final String text;
  final TextStyle style;
  final int? maxLines;
  final TextOverflow? overflow;

  ViewText.headingOne(this.text, {this.maxLines, this.overflow, Color? color}) : style = headingOne.copyWith(color: color);
  ViewText.headingTwo(this.text, {this.maxLines, this.overflow, Color? color}) : style = headingTwo.copyWith(color: color);
  ViewText.headingThree(this.text, {this.maxLines, this.overflow, Color? color}) : style = headingThree.copyWith(color: color);
  ViewText.headlineStyle(this.text, {this.maxLines, this.overflow, Color? color}) : style = headlineStyle.copyWith(color: color);
  ViewText.bodyText(this.text, {this.maxLines, this.overflow, Color? color}) : style = bodyText.copyWith(color: color);
  ViewText.subheading(this.text, {this.maxLines, this.overflow, Color? color}) : style = subHeadingText.copyWith(color: color);
  ViewText.middleSubHeadingText(this.text, {this.maxLines, this.overflow, Color? color}) : style = middleSubHeadingText.copyWith(color: color);
  ViewText.caption(this.text, {this.maxLines, this.overflow, Color? color}) : style = captionText.copyWith(color: color);

  ViewText.body(this.text, {this.maxLines, this.overflow, Color colour = kcMediumGreyColour}) : style = bodyText.copyWith(color: colour);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: style,
        maxLines: maxLines,
        overflow: overflow
    );
  }
}
