import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/home/ui/widgets/item_details_view_body.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});
  static const String routeName = '/itemDetailsView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ItemDetailsViewBody(),
    );
  }
}
