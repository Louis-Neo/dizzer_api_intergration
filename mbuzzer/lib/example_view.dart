import 'package:flutter/material.dart';
import 'package:mbuzzer_ui/mbuzzer_ui.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        children: [
          ViewText.body("Testing Out Design System"),
          verticalSmallSpace,
          const Divider(),
          verticalSmallSpace,
          ...textWidgets,
          ...buttonWidgets,
          ...inputFields
        ],
      ),
    );
  }

  List<Widget> get buttonWidgets => [
    ViewText.headlineStyle('Buttons'),
    verticalMediumSpace,
    ViewText.body('Normal'),
    verticalSmallSpace,
    const ButtonOne(
      title: 'SIGN IN',
    ),
    verticalSmallSpace,
    ViewText.body('Disabled'),
    verticalSmallSpace,
    const ButtonOne(
      title: 'SIGN IN',
      disabled: true,
    ),
    verticalSmallSpace,
    ViewText.body('Busy'),
    verticalSmallSpace,
    const ButtonOne(
      title: 'SIGN IN',
      busy: true,
    ),
    verticalSmallSpace,
    ViewText.body('Outline'),
    verticalSmallSpace,
    const ButtonOne.outline(
      title: 'Select location',
      leading: Icon(
        Icons.send,
        color: kcPrimaryColour,
      ),
    ),
    verticalMediumSpace,
  ];

  List<Widget> get textWidgets => [
    ViewText.headlineStyle('Text Styles'),
    verticalMediumSpace,
    ViewText.headingOne('Heading One'),
    verticalMediumSpace,
    ViewText.headingTwo('Heading Two'),
    verticalMediumSpace,
    ViewText.headingThree('Heading Three'),
    verticalMediumSpace,
    ViewText.headlineStyle('Headline'),
    verticalMediumSpace,
    ViewText.subheading('This will be a sub heading to the headling'),
    verticalMediumSpace,
    ViewText.body('Body Text that will be used for the general body'),
    verticalMediumSpace,
    ViewText.caption('This will be the caption usually for smaller details'),
    verticalMediumSpace,
  ];

  List<Widget> get inputFields => [
    ViewText.headlineStyle('Input Field'),
    verticalSmallSpace,
    ViewText.body('Normal'),
    verticalSmallSpace,
    ViewInputField(
      controller: TextEditingController(),
      placeholder: 'Enter Password',
    ),
    verticalSmallSpace,
    ViewText.body('Leading Icon'),
    verticalSmallSpace,
    ViewInputField(
      controller: TextEditingController(),
      leading: const Icon(Icons.reset_tv),
      placeholder: 'Enter TV Code',
    ),
    verticalSmallSpace,
    ViewText.body('Trailing Icon'),
    verticalSmallSpace,
    ViewInputField(
      controller: TextEditingController(),
      trailing: const Icon(Icons.clear_outlined),
      placeholder: 'Search for things',
    ),
  ];

}
