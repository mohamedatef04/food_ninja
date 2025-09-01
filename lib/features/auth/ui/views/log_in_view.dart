import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});
  static const routeName = '/log-in';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LogInViewBody(),
    );
  }
}
