import 'package:flutter/material.dart';
import 'package:workshop_gdg/my_store_app.dart';
import 'package:workshop_gdg/widgets/item_list_tile.dart';

class StoreList extends StatelessWidget {
  const StoreList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          final item = itemList[index];
          return ItemListTile(item: item);
        },
      ),
    );
  }
}
