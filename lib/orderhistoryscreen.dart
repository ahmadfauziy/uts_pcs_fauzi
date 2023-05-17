import 'package:flutter/material.dart';
import 'package:uts_pcs_fauzi/riwayat.dart';

class OrderHistoryScreen extends StatefulWidget {
  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  final List<Order> _orders = [
    Order(
      orderNumber: 'mobil avanza',
      orderDate: '2023-05-10',
      totalAmount: 200.0,
      orderStatus: 'bagus',
    ),
    Order(
      orderNumber: 'mobil sedan',
      orderDate: '2023-05-11',
      totalAmount: 100.0,
      orderStatus: 'bagus',
    ),
    Order(
      orderNumber: 'mobil sprot',
      orderDate: '2023-05-12',
      totalAmount: 300.0,
      orderStatus: 'bagus',
    ),
    Order(
      orderNumber: 'Mobil-SUV',
      orderDate: '2023-05-12',
      totalAmount: 300.0,
      orderStatus: 'bagus',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Pemesanan'),
      ),
      body: ListView.builder(
        itemCount: _orders.length,
        itemBuilder: (BuildContext context, int index) {
          final order = _orders[index];
          return ListTile(
            title: Text('Order #${order.orderNumber}'),
            subtitle: Text('${order.orderDate} - ${order.orderStatus}'),
            trailing: Text('\$${order.totalAmount.toStringAsFixed(2)}'),
            onTap: () {
              // TODO: Navigate to order details screen
            },
          );
        },
      ),
    );
  }
}