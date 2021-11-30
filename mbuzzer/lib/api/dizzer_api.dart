// ignore_for_file: unnecessary_string_interpolations

import 'dart:convert';
import 'dart:math';

import 'package:mbuzzer/models/artist_model.dart';
import 'package:http/http.dart' as http;

class DizzerAPI {

  static String baseURL = "https://developers.deezer.com";
  static String artistURL = baseURL + "/artist";
  var client = http.Client();

  Future<List<Artist>> getArtists() async {
    var artists = <Artist>[];
    int loop = 0;

    while(loop < 30){
      Random random = Random();
      int randomID = random.nextInt(500);

      var response = await client.get(Uri.parse(artistURL + "/$randomID"));
      var parsed = json.decode(response.body) as List<dynamic>;

      for(var artist in parsed){
        artists.add(Artist.fromJson(artist));
      }
    }
    return artists;
  }

}