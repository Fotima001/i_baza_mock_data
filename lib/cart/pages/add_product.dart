import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProductsPage extends StatelessWidget {
  const AddProductsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: Text( 'Adding Products Page',
                style:  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                )
            )
        )
    );
  }
}
