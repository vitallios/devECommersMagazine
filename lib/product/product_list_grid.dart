import 'package:flutter/material.dart';
import 'package:wew/api/atlas_api.dart';
import 'package:wew/product/item/product_item.dart';
import 'package:wew/product/modul/product_coin.dart';

class ProductListGrid extends StatefulWidget {
  const ProductListGrid({super.key});

  @override
  State<ProductListGrid> createState() => _ProductListGridState();
}

class _ProductListGridState extends State<ProductListGrid> {
  List<ProductCion>? _productcoinlist;

  @override
  void initState() {
    _listProductItem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // принимаем переданные аргументы
    final argumCategoryID = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // Заголовок страницы
        title: Text(argumCategoryID.toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        //
        child: (_productcoinlist == null)
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.separated(
                itemCount: _productcoinlist!.length,
                separatorBuilder: (context, i) => const Divider(),
                itemBuilder: (context, i) {
                  final category = _productcoinlist![i];
                  //
                  // Список товаров
                  return ProductItem(category: category);
                },
                //
              ),
      ),
    );
  }

  Future<void> _listProductItem() async {
    _productcoinlist = await CategoryApi().getCategoriListTitle();
    setState(() {});
  }
}
