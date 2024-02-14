import 'package:flutter/material.dart';

class SearchingProductsPage extends StatelessWidget {
  const SearchingProductsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: Text( 'Searching Products Page',
                style:  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                )
            )
        )
    );
  }
}
