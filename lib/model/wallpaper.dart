import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wallpaper_app/model/photo_url.dart';
part 'wallpaper.g.dart';

@JsonSerializable()
class Wallpaper {
  final int width;
  final int height;
  final int likes;
  final String color;
  final PhotoUrl urls;

  Wallpaper({
    @required this.width,
    @required this.height,
    @required this.likes,
    @required this.color,
    @required this.urls,
  });
  factory Wallpaper.fromJson(Map<String, dynamic> json) =>
      _$WallpaperFromJson(json);
  Map<String, dynamic> toJson() => _$WallpaperToJson(this);

  static Wallpaper fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Wallpaper(
      width: map["width"],
      height: map["height"],
      likes: map["likes"],
      color: map["color"],
      urls: PhotoUrl.fromMap(map["urls"]),
    );
  }
}
