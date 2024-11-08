import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  // List to store favorite items
  final List<String> _favoriteItems = [];

  // Get list of favorite items
  List<String> get favoriteItems => _favoriteItems;

  // Add an item to favorites
  void addFavorite(String itemId) {
    if (!_favoriteItems.contains(itemId)) {
      _favoriteItems.add(itemId);
      notifyListeners();
    }
  }

  // Remove an item from favorites
  void removeFavorite(String itemId) {
    if (_favoriteItems.contains(itemId)) {
      _favoriteItems.remove(itemId);
      notifyListeners();
    }
  }

  // Check if an item is in favorites
  bool isFavorite(String itemId) {
    return _favoriteItems.contains(itemId);
  }
}
