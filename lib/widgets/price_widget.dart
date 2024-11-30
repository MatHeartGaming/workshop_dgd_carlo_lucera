import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  final double price;
  const PriceWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    if (price <= 0) {
      return const SizedBox();
    }
    final texts = Theme.of(context).textTheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.euro_rounded),
        Text(
          price.toStringAsFixed(2),
          style: texts.titleLarge,
        ),
      ],
    );
  }
}
