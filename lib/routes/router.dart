import 'package:first_web/presentation/about_us/about_us_section.dart';
import 'package:first_web/presentation/our_blog/our_blog.dart';
import 'package:go_router/go_router.dart';
import 'package:first_web/presentation/home/home_screen.dart';
import 'package:first_web/presentation/What-we-do/what_we_do.dart';

class WebRouter {
  String initial = '/';

  WebRouter();
  late final router = GoRouter(
    //This remove the hashtags of the URL, However i can't find the solution for refreshing the screen
    // urlPathStrategy: UrlPathStrategy.path,
    debugLogDiagnostics: true,
    //Redirection

    // errorBuilder: (context, state) => const NotFoundScreen(),

    routes: <GoRoute>[
      GoRoute(
          path: '/',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const HomeScreen(),
            );
          }),
      GoRoute(
          path: '/what-we-do',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const WhatwedoScreen(),
            );
          }),
      GoRoute(
          path: '/our-blog',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const ContactUsScreen(),
            );
          }),
           GoRoute(
          path: '/about-us',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const AboutUsSection(),
            );
          }),
    ],
  );
}
