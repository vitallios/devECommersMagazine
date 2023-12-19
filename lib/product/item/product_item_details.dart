import 'package:flutter/material.dart';

class ProductItemDetails extends StatefulWidget {
  const ProductItemDetails({super.key});

  @override
  State<ProductItemDetails> createState() => _ProductItemDetailsState();
}

class _ProductItemDetailsState extends State<ProductItemDetails> {
  @override
  Widget build(BuildContext context) {
    final argumProductName = ModalRoute.of(context)!.settings.arguments;

    debugPrint(argumProductName.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          argumProductName.toString(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => const Text('data'),
        ),
      ),
    );
  }
}
