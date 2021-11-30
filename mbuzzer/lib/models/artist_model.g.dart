// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artist _$ArtistFromJson(Map<String, dynamic> json) => Artist(
      id: json['id'] as String,
      name: json['name'] as String,
      picture_big: json['picture_big'] as String,
      picture_medium: json['picture_medium'] as String,
      nb_album: json['nb_album'] as int,
      nb_fan: json['nb_fan'] as int,
    );

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'picture_big': instance.picture_big,
      'picture_medium': instance.picture_medium,
      'nb_album': instance.nb_album,
      'nb_fan': instance.nb_fan,
    };
