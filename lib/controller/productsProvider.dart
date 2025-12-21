import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/product.dart';
import '../repository/product_repository.dart';

final productRepositoryProvider = Provider((ref) => ProductRepository());

final productsProvider = FutureProvider<List<Product>>((ref) async {
  final repository = ref.watch(productRepositoryProvider);
  return repository.fetchProducts();
});

final productByIdProvider = FutureProvider.family<Product?, String>((
  ref,
  id,
) async {
  final repository = ref.watch(productRepositoryProvider);
  return repository.getProductById(id);
});

final selectedCategoryProvider = StateProvider<String>((ref) => 'All');

final filteredProductsProvider = Provider<AsyncValue<List<Product>>>((ref) {
  final productsAsync = ref.watch(productsProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);

  return productsAsync.whenData((products) {
    if (selectedCategory == 'All') {
      return products;
    }
    return products.where((p) => p.category == selectedCategory).toList();
  });
});
