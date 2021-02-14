// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoUrl _$PhotoUrlFromJson(Map<String, dynamic> json) {
  return PhotoUrl(
    full: json['full'] as String,
    regular: json['regular'] as String,
    small: json['small'] as String,
    thumb: json['thumb'] as String,
  );
}

Map<String, dynamic> _$PhotoUrlToJson(PhotoUrl instance) => <String, dynamic>{
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
    };
