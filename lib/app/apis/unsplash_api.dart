import 'package:wallpaper_app/app/data/dio_client.dart';
import 'package:wallpaper_app/app/data/endpoints.dart';
import 'package:wallpaper_app/model/wallpaper.dart';

class UnspashApi {
  DioClient _client = DioClient();

  Future<List<Wallpaper>> fetchWallpapers() async {
    List<Wallpaper> _wallpapers = [];
    try {
      final res = await _client.get(Endpoints.photos);

      _wallpapers = res.map<Wallpaper>((e) => Wallpaper.fromMap(e)).toList();
      return _wallpapers;
    } catch (e) {
      throw e;
    }
  }
}
