import 'package:flutter/foundation.dart';
import '../models/media_item.dart';

class MediaProvider extends ChangeNotifier {
  List<MediaItem> _mediaItems = [];

  List<MediaItem> get mediaItems => _mediaItems;

  void loadMedia(List<MediaItem> items) {
    _mediaItems = items;
    notifyListeners();
  }
}
