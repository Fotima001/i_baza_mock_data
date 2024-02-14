import 'package:flutter/material.dart';
import '../../core/route_names/orders_route_names.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
            child: GestureDetector(
                onTap: ()
                {
                  Navigator.of(context).pushNamed(OrderRouteNames.ordersHistory);
                },
                child: const Text(
                  'Order Page',
                  style:  TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700
                  ),

                )
            )
        )
    );
  }
}
