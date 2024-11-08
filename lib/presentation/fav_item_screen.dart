import 'package:bidbuyweb/theme/provider/fav_providor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoriteItems = Provider.of<FavoriteProvider>(context).favoriteItems;

    return Scaffold(
      appBar: AppBar(title: Text("Favorite Items")),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final itemId = favoriteItems[index];
          return ListTile(
            title: Text("Item ID: $itemId"),
          );
        },
      ),
    );
  }
}
