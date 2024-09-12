import 'package:book_store/Features/Presentation/account/presentation/views/account_view.dart';
import 'package:book_store/Features/Presentation/our%20book/presentation/views/our_book_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Presentation/cart/presentation/views/cart_view.dart';
import '../../Features/Presentation/home/presentation/views/home_view.dart';
import '../../Features/Presentation/mainTab/presentation/views/main_tab_view.dart';
import '../../Features/Presentation/menu/presentation/views/menu_view.dart';
import '../../Features/Presentation/onboarding/presentation/views/onboarding_view.dart';
import '../../Features/Presentation/onboarding/presentation/views/welcome_view.dart';
import '../../Features/Presentation/search/presentation/views/search_view.dart';
import '../../Features/Presentation/sign in/up/presentation/views/forgot_password_view.dart';
import '../../Features/Presentation/sign in/up/presentation/views/help_us_view.dart';
import '../../Features/Presentation/sign in/up/presentation/views/log_in_view.dart';
import '../../Features/Presentation/sign in/up/presentation/views/sign_up_view.dart';
import '../../comming_soon_view.dart';

class AppRouter {
  static const kWelcomeView = '/welcomeView';
  static const kSignUpView = '/signUpView';
  static const kLogInView = '/LogInView';
  static const kForgotPasswordView = '/forgotPasswordView';
  static const kHelpUsView = '/helpUsView';
  static const kMainTabView = '/mainTabView';
  static const kHomeView = '/homeView';
  static const kSearchView = '/searchView';
  static const kMenuView = '/menuView';
  static const kCartView = '/cartView';
  static const kOurBookView = '/ourBookView';
  static const kAccountView = '/accountView';
  static const KCommingSoonView = '/commingSoonView';

  static final GlobalKey<ScaffoldState> sideMenuScaffoldKey =
      GlobalKey<ScaffoldState>();

  static final router = GoRouter(
    routes: [
      GoRoute(
        //this '/' let the GoRoute know what is the first screen to view
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kWelcomeView,
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kLogInView,
        builder: (context, state) => const LogInView(),
      ),
      GoRoute(
        path: kForgotPasswordView,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: kHelpUsView,
        builder: (context, state) => const HelpUsView(),
      ),
      GoRoute(
        path: kMainTabView,
        builder: (context, state) =>
            MainTabView(sideMenuScaffoldKey: sideMenuScaffoldKey),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) =>
            HomeView(sideMenuScaffoldKey: sideMenuScaffoldKey),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kMenuView,
        builder: (context, state) => const MenuView(),
      ),
      GoRoute(
        path: kCartView,
        builder: (context, state) => const CartView(),
      ),
      GoRoute(
        path: kOurBookView,
        builder: (context, state) => const OurBookView(),
      ),
      GoRoute(
        path: kAccountView,
        builder: (context, state) => const AccountView(),
      ),
      GoRoute(
        path: KCommingSoonView,
        builder: (context, state) => const CommingSoonView(),
      ),
    ],
  );
}
