import 'package:food_delivery_app/features/splash/ui/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    // GoRoute(
    //   path: OnboardingView.routeName,
    //   builder: (context, state) => const OnboardingView(),
    // ),
    // GoRoute(
    //   path: SignInView.routeName,
    //   builder: (context, state) => const SignInView(),
    // ),
    // GoRoute(
    //   path: SignUpView.routeName,
    //   builder: (context, state) => const SignUpView(),
    // ),
    // GoRoute(
    //   path: ChangePasswordView.routeName,
    //   builder: (context, state) => const ChangePasswordView(),
    // ),
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

    // GoRoute(
    //   path: MainHomeView.routeName,
    //   builder: (context, state) => const MainHomeView(),
    // ),

    // GoRoute(
    //   path: HomeView.routeName,
    //   builder: (context, state) => const HomeView(),
    // ),
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

    // GoRoute(
    //   path: FavouritesView.routeName,
    //   builder: (context, state) => const FavouritesView(),
    // ),
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
