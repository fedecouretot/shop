import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Components/app_drawer.dart';
import 'package:shop/Components/order.dart';
import 'package:shop/Models/order_list.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OrderList ordersList = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Pedidos'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: ordersList.itemsCount,
        itemBuilder: (ctx, i) => OrderWidget(
          order: ordersList.items[i],
        ),
      ),
    );
  }
}
