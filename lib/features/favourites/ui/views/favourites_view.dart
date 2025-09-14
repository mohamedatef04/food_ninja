import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/favourites/ui/widgets/favourites_view_body.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});
  static const String routeName = '/favourites-view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: FavouritesViewBody());
  }
}
