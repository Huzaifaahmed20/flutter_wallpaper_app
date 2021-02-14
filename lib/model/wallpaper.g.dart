// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wallpaper _$WallpaperFromJson(Map<String, dynamic> json) {
  return Wallpaper(
    width: json['width'] as int,
    height: json['height'] as int,
    likes: json['likes'] as int,
    color: json['color'] as String,
    urls: json['urls'] == null
        ? null
        : PhotoUrl.fromJson(json['urls'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WallpaperToJson(Wallpaper instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'likes': instance.likes,
      'color': instance.color,
      'urls': instance.urls,
    };
