import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/media_provider.dart';
import '../widgets/video_player_widget.dart';
import 'music_player_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaProvider = Provider.of<MediaProvider>(context);

    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mediaProvider.mediaItems.length,
        itemBuilder: (context, index) {
          final media = mediaProvider.mediaItems[index];

          if (media.isVideo) {
            return VideoPlayerWidget(path: media.path);
          } else {
            return MusicPlayerScreen(path: media.path, title: media.title);
          }
        },
      ),
    );
  }
}
