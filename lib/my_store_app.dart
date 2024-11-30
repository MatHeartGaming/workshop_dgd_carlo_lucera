import 'package:flutter/material.dart';
import 'package:workshop_gdg/models/item_model.dart';
import 'package:workshop_gdg/widgets/store_list.dart';

class MyStoreApp extends StatelessWidget {
  const MyStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store Application'),
        backgroundColor: colors.primaryContainer,
      ),
      body: const StoreList(),
    );
  }
}

final List<ItemModel> itemList = [
  ItemModel(id: '0', name: 'Item', shortDescription: 'Descrizione 1', price: 10),
  ItemModel(id: '1', name: 'Item', shortDescription: 'Descrizione 2', price: 0),
  ItemModel(id: '2', name: 'Item', shortDescription: 'Descrizione 3', price: 50.50),
  ItemModel(id: '3', name: 'Item', shortDescription: 'Descrizione 4', price: 34.45),
  ItemModel(id: '4', name: 'Item', shortDescription: 'Descrizione 5', price: 111),
];