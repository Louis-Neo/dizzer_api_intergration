import 'package:mbuzzer/api/dizzer_api.dart';
import 'package:mbuzzer/services/artist_data_service.dart';
import 'package:mbuzzer/ui/albumview/album_view.dart';
import 'package:mbuzzer/ui/artistview/artist_view.dart';
import 'package:mbuzzer/ui/exploreview/explore_view.dart';
import 'package:mbuzzer/ui/startupview/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

// Using StackedApp for state management, generating routes and dependency injection.
@StackedApp(
  routes: [
    CupertinoRoute(page: StartUpView, initial: true),
    CupertinoRoute(page: ExploreView),
    CupertinoRoute(page: ArtistView),
    CupertinoRoute(page: AlbumView)
  ],
  dependencies: [
    // LazySingleton(classType: NavigationService),
    LazySingleton(classType: DizzerAPI),
    LazySingleton(classType: ArtistDataService),
    LazySingleton(classType: NavigationService)
  ]
)
class AppSetup{
  //** **//
}