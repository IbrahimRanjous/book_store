import 'package:book_store/Features/Presentation/onboarding/presentation/views/onboarding_view.dart';
import 'package:book_store/Features/Presentation/onboarding/presentation/views/welcom_view.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/log_in_view.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/sign_up_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  // static const kHomeView = '/homeView';
  // static const kBookDetailsView = '/bookDetailsView';
  // static const kSearchView = '/searchView';
  static const kWelcomeView = '/welcomeView';
  static const kSignUpView = '/signUpView';
  static const kLogInView = '/LogInView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        //this '/' let the GoRoute know what is the first screen to view
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kWelcomeView,
        builder: (context, state) => const WelcomView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kLogInView,
        builder: (context, state) => const LogInView(),
      ),
    ],
  );
}
