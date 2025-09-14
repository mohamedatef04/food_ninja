import 'package:food_delivery_app/features/auth/ui/views/forget_password_view.dart';
import 'package:food_delivery_app/features/auth/ui/views/log_in_view.dart';
import 'package:food_delivery_app/features/auth/ui/views/sign_up_view.dart';
import 'package:food_delivery_app/features/cart/ui/views/cart_view.dart';
import 'package:food_delivery_app/features/favourites/ui/views/favourites_view.dart';
import 'package:food_delivery_app/features/home/ui/views/home_view.dart';
import 'package:food_delivery_app/features/home/ui/views/item_details_view.dart';
import 'package:food_delivery_app/features/home/ui/views/main_home_view.dart';
import 'package:food_delivery_app/features/on_boarding/ui/views/on_boarding_view.dart';
import 'package:food_delivery_app/features/profile/ui/views/profile_view.dart';
import 'package:food_delivery_app/features/splash/ui/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainHomeView(),
    ),
    GoRoute(
      path: OnBoardingView.routeName,
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: LogInView.routeName,
      builder: (context, state) => const LogInView(),
    ),
    GoRoute(
      path: SignUpView.routeName,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: ForgetPasswordView.routeName,
      builder: (context, state) => const ForgetPasswordView(),
    ),
    GoRoute(
      path: ItemDetailsView.routeName,
      builder: (context, state) => const ItemDetailsView(),
    ),

    // GoRoute(
    //   path: VerifyAccountView.routeName,
    //   builder: (context, state) => const VerifyAccountView(),
    // ),
    // GoRoute(
    //   path: VerifyOtpDuringChangePass.routeName,
    //   builder: (context, state) => VerifyOtpDuringChangePass(
    //     phoneNumber: state.extra as String? ?? '',
    //   ),
    // ),
    // GoRoute(
    //   path: InsertNewPassView.routeName,
    //   builder: (context, state) => const InsertNewPassView(),
    // ),
    // GoRoute(
    //   path: CongratesView.routeName,
    //   builder: (context, state) => const CongratesView(),
    // ),
    // GoRoute(
    //   path: VerifyAccountView.routeName,
    //   builder: (context, state) => const VerifyAccountView(),
    // ),
    GoRoute(
      path: MainHomeView.routeName,
      builder: (context, state) => const MainHomeView(),
    ),

    GoRoute(
      path: HomeView.routeName,
      builder: (context, state) => const HomeView(),
    ),

    // GoRoute(
    //   path: SpecialAdvertisementsView.routeName,
    //   builder: (context, state) => const SpecialAdvertisementsView(),
    // ),
    // GoRoute(
    //   path: AdvertiseDetailsView.routeName,
    //   builder: (context, state) => AdvertiseDetailsView(
    //     advertiseModel: state.extra as AdvertiseModel,
    //   ),
    // ),
    GoRoute(
      path: CartView.routeName,
      builder: (context, state) => const CartView(),
    ),
    GoRoute(
      path: FavouritesView.routeName,
      builder: (context, state) => const FavouritesView(),
    ),
    GoRoute(
      path: ProfileView.routeName,
      builder: (context, state) => const ProfileView(),
    ),

    // GoRoute(
    //   path: PublishAdvertiseView.routeName,
    //   builder: (context, state) => const PublishAdvertiseView(),
    // ),
    // GoRoute(
    //   path: ChatsView.routeName,
    //   builder: (context, state) => const ChatsView(),
    // ),
    // GoRoute(
    //   path: ProfileView.routeName,
    //   builder: (context, state) => const ProfileView(),
    // ),

    // GoRoute(
    //   path: PersonalDetailsView.routeName,
    //   builder: (context, state) => const PersonalDetailsView(),
    // ),

    // GoRoute(
    //   path: PersonalProfileView.routeName,
    //   builder: (context, state) => const PersonalProfileView(),
    // ),
    // GoRoute(
    //   path: ConversationView.routeName,
    //   builder: (context, state) {
    //     return const ConversationView();
    //   },
    // ),
    // GoRoute(
    //   path: SearchView.routeName,
    //   builder: (context, state) => const SearchView(),
    // ),
    // GoRoute(
    //   path: SellerProfileView.routeName,
    //   builder: (context, state) => SellerProfileView(
    //     sellerId: state.extra as String,
    //   ),
    // ),
  ],
);
