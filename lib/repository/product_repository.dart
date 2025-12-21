import '../data/models/product.dart';
import '../data/services/mock_api.dart';

class ProductRepository {
  Future<List<Product>> fetchProducts() async {
    return await MockApi.getProducts();
  }

  Future<Product?> getProductById(String id) async {
    final products = await fetchProducts();
    try {
      return products.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }
}
