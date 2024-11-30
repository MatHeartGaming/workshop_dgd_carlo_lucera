import 'package:flutter/material.dart';
import 'package:workshop_gdg/models/item_model.dart';
import 'package:workshop_gdg/widgets/price_widget.dart';

class ItemListTile extends StatelessWidget {
  final ItemModel item;
  const ItemListTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: Card(
        child: ListTile(
          leading: const Icon(Icons.accessibility),
          trailing: PriceWidget(price: item.price),
          title: Text(item.name),
          subtitle: Text(item.shortDescription),
        ),
      ),
    );
  }
}
