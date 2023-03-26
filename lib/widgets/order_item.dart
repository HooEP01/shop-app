import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/order.dart' as ord;
import 'package:intl/intl.dart';

class OrderItem extends StatelessWidget {
  final ord.OrderItem order;
  const OrderItem({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('RM ${order.amount}'),
            subtitle: Text(
              DateFormat('dd MM yyyy hh:mm').format(order.dateTime),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.expand_more),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
