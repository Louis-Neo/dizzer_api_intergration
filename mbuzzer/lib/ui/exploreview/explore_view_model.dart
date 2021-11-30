// ignore_for_file: dead_code

import 'package:mbuzzer/api/dizzer_api.dart';
import 'package:mbuzzer/app/app.locator.dart';
import 'package:mbuzzer/app/app.router.dart';
import 'package:mbuzzer/models/artist_model.dart';
import 'package:mbuzzer/services/artist_data_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ExploreViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();
  final _dizzerAPICall = locator<ArtistDataService>();

  List<Artist> get artists => _dizzerAPICall.artists;

  Future<void> navigateTo() async {
    _navigationService.navigateTo(Routes.artistView);
  }

  Future fetchArtists() async {
    setBusy(true);
    await _dizzerAPICall.getArtists();
    // ignore: avoid_print
    print(artists[0].name);
    setBusy(false);
  }

}