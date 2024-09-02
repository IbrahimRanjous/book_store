import 'package:book_store/Features/Presentation/onboarding/presentation/views/onboarding_view.dart';
import 'package:book_store/Features/Presentation/onboarding/presentation/views/welcom_view.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/forgot_password_view.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/help_us_view.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/log_in_view.dart';
import 'package:book_store/Features/Presentation/sign%20in/up/presentation/views/sign_up_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kWelcomeView = '/welcomeView';
  static const kSignUpView = '/signUpView';
  static const kLogInView = '/LogInView';
  static const kForgotPasswordView = '/forgotPasswordView';
  static const kHelpUsView = '/helpUsView';
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
      GoRoute(
        path: kForgotPasswordView,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: kHelpUsView,
        builder: (context, state) => const HelpUsView(),
      ),
    ],
  );
}
