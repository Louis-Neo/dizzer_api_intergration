import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mbuzzer/ui/startupview/startup_view_model.dart';
import 'package:mbuzzer_ui/mbuzzer_ui.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      viewModelBuilder: () => StartUpViewModel(),
      onModelReady: (model) => SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
        model.runStartUpLogic();
      }),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: ViewText.headingOne("StartUp View"),
        ),
      )
    );
  }
}
