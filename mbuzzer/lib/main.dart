import 'package:flutter/material.dart';
import 'package:mbuzzer_ui/mbuzzer_ui.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

void main(){
  setupLocator();
  runApp(const AppEntry());
}

class AppEntry extends StatelessWidget {
  const AppEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MDizzer",
      theme: ThemeData(primaryColor: kcPrimaryColour),
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute
    );
  }
}
