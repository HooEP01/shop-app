import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

import './edit_product_screen.dart';

import '../widgets/user_product_item.dart';
import '../widgets/shop_drawer.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';
  const UserProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(EditProductScreen.routeName);
            },
          )
        ],
      ),
      drawer: const ShopDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: productsData.items.length,
          itemBuilder: (ctx, i) => Column(
            children: [
              UserProductItem(
                productsData.items[i].title,
                productsData.items[i].imageUrl,
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}