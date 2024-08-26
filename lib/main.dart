import 'package:flutter/material.dart';
import 'package:payment/Features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const Checkout());
}

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
