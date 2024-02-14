import 'package:flutter/material.dart';
import 'package:ibaza_mock_data/core/routes/catalog_route.dart';
import '../../core/routes/cart_route.dart';
import '../../core/routes/main_route.dart';
import '../../core/routes/orders_route.dart';
import '../../core/routes/profile_route.dart';
import 'destination.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Expanded(
            child: IndexedStack(
                index: index,
                children: const [
              DestinationPage(onGenerateRoute: MainRoute.onGenerateRoute),
              DestinationPage(onGenerateRoute: CatalogRoute.onGenerateRoute),
              DestinationPage(onGenerateRoute: OrdersRoute.onGenerateRoute),
              DestinationPage(onGenerateRoute: CartRoute.onGenerateRoute),
              DestinationPage(onGenerateRoute: ProfileRoute.onGenerateRoute),
            ]),
          ),
          Container(
            width: double.maxFinite,
            height: 70 + MediaQuery.of(context).padding.bottom,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Row(
              children: List.generate(
                5,
                    (index) => Expanded(
                  child: GestureDetector(
                    onTap: () {
                      this.index = index;
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
  }
}