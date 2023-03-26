import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/order.dart' show Order;
import '../widgets/order_item.dart';
import '../widgets/shop_drawer.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = '/order';

  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Order>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const ShopDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(
          order: orderData.orders[i],
        ),
      ),
    );
  }
}
