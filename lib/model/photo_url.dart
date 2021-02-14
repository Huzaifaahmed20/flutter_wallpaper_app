import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo_url.g.dart';

@JsonSerializable()
class PhotoUrl {
  final String full;
  final String regular;
  final String small;
  final String thumb;

  PhotoUrl({
    @required this.full,
    @required this.regular,
    @required this.small,
    @required this.thumb,
  });

  factory PhotoUrl.fromJson(Map<String, dynamic> json) =>
      _$PhotoUrlFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoUrlToJson(this);

  static PhotoUrl fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PhotoUrl(
      full: map["full"],
      regular: map["regular"],
      small: map["small"],
      thumb: map["thumb"],
    );
  }
}
