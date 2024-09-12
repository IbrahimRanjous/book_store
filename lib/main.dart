import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:animations/animations.dart';

void main() async {
  if (kReleaseMode) {
    await SentryFlutter.init(
      (options) {
        options.dsn =
            'https://86889a65de61fdd7bf3a123890577b65@o4507928233705472.ingest.de.sentry.io/4507928263131216';
        // Set tracesSampleRate to 1.0 to capture 100% of transactions for tracing.
        // We recommend adjusting this value in production.
        options.tracesSampleRate = 0.01;
      },
      appRunner: () => runApp(const BookStore()),
    );
  } else {
    runApp(const BookStore());
  }
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: 'Book Store',
      theme: ThemeData(
        primaryColor: TColor.primary,
        fontFamily: 'SF Pro Text',
      ),
    );
  }
}
