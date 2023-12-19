import 'package:flutter/material.dart';
import 'package:wew/product/modul/product_coin.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.category,
  });

  final ProductCion category;

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return ListTile(
      leading: null,
      title: Text(
        category.title,
        style: them.textTheme.bodyMedium,
      ),
      subtitle: Text(
        category.articl,
        style: them.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/productList',
          arguments: category.title,
        );
      },
    );
  }
}
