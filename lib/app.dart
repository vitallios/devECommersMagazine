import 'package:flutter/material.dart';
import 'package:wew/category/category_list_colum.dart';

import 'Them/theme.dart';
// import 'product/product_list_grid.dart';
import 'routes/routers.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkThem,
      routes: route,
      // home: const ProductListGrid(),
      home: const CategoryListColumn(),
    );
  }
}
