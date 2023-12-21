import 'package:flutter/material.dart';

class CategoryListColumn extends StatefulWidget {
  const CategoryListColumn({super.key});

  @override
  State<CategoryListColumn> createState() => _CategoryListColumnState();
}

class _CategoryListColumnState extends State<CategoryListColumn> {
  //

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);

    final List<Map<String, Object>> catItem = [
      {'id': 1, 'name': 'Атлас'},
      {'id': 2, 'name': 'Бархат'},
      {'id': 3, 'name': 'Шифон'},
      {'id': 4, 'name': 'Купра'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('GalaTexClub'),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemCount: catItem.length,
        itemBuilder: (context, index) => Column(
          children: [
            // кнопка
            ElevatedButton(
              // название кнопки

              child: Text(
                '${catItem[index]['name']}',
                style: them.textTheme.bodyMedium,
              ),

              // перевод на страницу
              onPressed: () {
                Navigator.of(context).pushNamed('/productListGrid',
                    // передаваемые аргументы на страницу
                    arguments: '${catItem[index]['name']}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
