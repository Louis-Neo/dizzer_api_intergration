import 'package:json_annotation/json_annotation.dart';

part 'artist_model.g.dart';

@JsonSerializable()
class Artist {

  final String id;
  final String name;
  final String picture_big;
  final String picture_medium;
  final int nb_album;
  final int nb_fan;

  const Artist({
    required this.id,
    required this.name,
    required this.picture_big,
    required this.picture_medium,
    required this.nb_album,
    required this.nb_fan
  });

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}
