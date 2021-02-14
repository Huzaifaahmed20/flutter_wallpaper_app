import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_app/model/wallpaper.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/providers/wallpapers_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  const sampleImage =
      "https://images.unsplash.com/photo-1593642633279-1796119d5482?crop=entropy&cs=srgb&fm=jpg&ixid=MXwyMDY2MzF8MXwxfGFsbHwxfHx8fHx8Mnw&ixlib=rb-1.2.1&q=85";
  @override
  Widget build(BuildContext context) {
    final List<Wallpaper> _wallpapers =
        context.watch<WallpaperProvider>().wallpapers;
    return Scaffold(
      body: Container(child: Image.network(sampleImage)
          // ListView.builder(
          //   itemCount: _wallpapers.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     Wallpaper wallpaper = _wallpapers[index];
          //     return Image.network(
          //         // wallpaper.urls.full,
          //         sampleImage);
          //   },
          // ),
          ),
    );
  }
}
