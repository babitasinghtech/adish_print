import 'package:adish_print/controller/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesTab extends ConsumerStatefulWidget {
  const CategoriesTab({super.key});

  @override
  ConsumerState<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends ConsumerState<CategoriesTab>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    final categories = ref.read(categoryProvider);
    _tabController = TabController(length: categories.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final categories = ref.watch(categoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: categories.map((cat) => Tab(text: cat.title)).toList(),
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children:
            categories.map((category) {
              return GridView.builder(
                padding: const EdgeInsets.all(12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: category.images.length,
                itemBuilder: (context, index) {
                  final image = category.images[index];
                  return Card(
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(image, fit: BoxFit.cover),
                    ),
                  );
                },
              );
            }).toList(),
      ),
    );
  }
}
