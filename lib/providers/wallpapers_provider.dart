import 'package:flutter/widgets.dart';
import 'package:wallpaper_app/app/apis/unsplash_api.dart';
import 'package:wallpaper_app/model/wallpaper.dart';

class WallpaperProvider extends ChangeNotifier {
  WallpaperProvider() {
    getPhotos();
  }
  UnspashApi _unspashApi = UnspashApi();
  List<Wallpaper> _wallpapers = [];
  List<Wallpaper> get wallpapers => _wallpapers;

  Future<void> getPhotos() async {
    final List<Wallpaper> fetchedWallpapers =
        await _unspashApi.fetchWallpapers();
    _wallpapers = fetchedWallpapers;
    print(_wallpapers);
    notifyListeners();
  }
}
