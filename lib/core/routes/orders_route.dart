import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibaza_mock_data/core/route_names/orders_route_names.dart';
import '../../orders/pages/order.dart';
import '../../orders/pages/orders_history.dart';

class OrdersRoute{
  static Route? onGenerateRoute(RouteSettings settings) {
    final String routeName = settings.name ??'';
    switch (routeName) {
      case OrderRouteNames.order:
        return CupertinoPageRoute(builder: (context) => const OrderPage());
      case OrderRouteNames.ordersHistory:
        return CupertinoPageRoute(builder: (context) => const OrdersHistoryPage());
      default:
        return CupertinoPageRoute(builder: (context) => const Scaffold());
    }

  }
}