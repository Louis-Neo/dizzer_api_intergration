import 'package:mbuzzer/app/app.locator.dart';
import 'package:mbuzzer/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();

  Future<void> runStartUpLogic() async {
    _navigationService.navigateTo(Routes.exploreView);
  }

}