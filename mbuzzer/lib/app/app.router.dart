// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/albumview/album_view.dart';
import '../ui/artistview/artist_view.dart';
import '../ui/exploreview/explore_view.dart';
import '../ui/startupview/startup_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String exploreView = '/explore-view';
  static const String artistView = '/artist-view';
  static const String albumView = '/album-view';
  static const all = <String>{
    startUpView,
    exploreView,
    artistView,
    albumView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.exploreView, page: ExploreView),
    RouteDef(Routes.artistView, page: ArtistView),
    RouteDef(Routes.albumView, page: AlbumView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    ExploreView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ExploreView(),
        settings: data,
      );
    },
    ArtistView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ArtistView(),
        settings: data,
      );
    },
    AlbumView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const AlbumView(),
        settings: data,
      );
    },
  };
}
