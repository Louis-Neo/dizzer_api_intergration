
import 'package:mbuzzer/api/dizzer_api.dart';
import 'package:mbuzzer/app/app.locator.dart';
import 'package:mbuzzer/models/artist_model.dart';

class ArtistDataService {

  final DizzerAPI _dizzerAPI = locator<DizzerAPI>();

  late List<Artist> _artists;
  List<Artist> get artists  => _artists;

  Future getArtists() async {
    _artists = await _dizzerAPI.getArtists();
  }

}