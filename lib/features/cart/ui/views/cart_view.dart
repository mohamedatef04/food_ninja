import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/cart/ui/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const String routeName = '/cart-view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartViewBody(),
    );
  }
}
