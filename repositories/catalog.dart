import '../catalog/mock_data.dart';
import '../models/catalog.dart';

class CatalogRepository {
  Future<List<CatalogModel>> getCatalog() async {
    List<dynamic> productList = data['products'];
    List<CatalogModel> catalogList = productList.map((product) {
      return CatalogModel(
        id: product['id'],
        title: product['title'],
        definition: product['definition'],

        oldPrice: product['oldPrice'],
        price: product['price'],
      );
    }).toList();

    return catalogList;
  }
}
