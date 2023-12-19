import 'package:dio/dio.dart';
import 'package:wew/product/modul/product_coin.dart';
import 'package:xml/xml.dart' as xml;
//

class CategoryApi {
  final globalUrl = 'https://galatexclub.ru/bitrix/catalog_export';
  final idCatalog = 'x06';

  Future<List<ProductCion>> getCategoriListTitle() async {
    final response = await Dio().get(
      '$globalUrl/export_$idCatalog.xml',
    );
    //
    final document = xml.XmlDocument.parse(response.data.toString());
    final employeeShop = document.findAllElements('shop').first;
    //
    // лист товаров
    final employeeOffers = employeeShop.findElements('offers').first;
    // карточки товаров
    final employeeOffer = employeeOffers
        .findAllElements('offer')
        .map(
          (e) => ProductCion(
            title: e.findElements('model').first.innerText.toString(),
            articl: e.findElements('vendorCode').first.innerText.toString(),
            picture: e.findElements('picture').first.innerText.toString(),
            price: e.findElements('price').first.innerText.toString(),
            paramColor:
                e.findElements('param').elementAt(1).innerText.toString(),
          ),
        )
        .toList();

    return employeeOffer;
  }
}
