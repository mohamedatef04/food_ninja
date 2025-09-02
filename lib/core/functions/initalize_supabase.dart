import 'package:food_delivery_app/core/network/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

initSupabase() async {
  await Supabase.initialize(
    url: supabaseBaseUrl,
    anonKey: supabaseAnonKey,
  );
}
