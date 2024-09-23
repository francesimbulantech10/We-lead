import 'package:first_web/presentation/What-we-do/E-commerce/Ecommerce-screen.dart';
import 'package:first_web/presentation/What-we-do/Energy/energy-screen.dart';
import 'package:first_web/presentation/What-we-do/Power/power-screen.dart';

import 'package:first_web/presentation/What-we-do/Software/software.screen.dart';
import 'package:first_web/presentation/What-we-do/Sourcing/Sourcing.screen.dart';
import 'package:first_web/presentation/What-we-do/water/water-screen.dart';

import 'package:first_web/presentation/about_us/about_us_section.dart';
import 'package:first_web/presentation/our_blog/Watthour/Watthour.screen.dart';
import 'package:first_web/presentation/our_blog/Solarpower/Solarpower.screen.dart';
import 'package:first_web/presentation/our_blog/Unleashing/Unleashing.screen.dart';
import 'package:first_web/presentation/our_blog/Unlocking/Unlocking.screen.dart';
import 'package:first_web/presentation/our_blog/Empowerment/Empowerment.screen.dart';
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
              child: const OurBlogscreen(),
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
      GoRoute(
          path: '/power',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Powerscreen(),
            );
          }),
      GoRoute(
          path: '/water',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Waterscreen(),
            );
          }),
           GoRoute(
          path: '/energy',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Energyscreen(),
            );
          }),
          GoRoute(
          path: '/ecommerce',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Ecommercescreen(),
            );
          }),
          GoRoute(
          path: '/sourcing',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Sourcingscreen(),
            );
          }),
           GoRoute(
          path: '/software',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Softwarescreen(),
            );
          }),GoRoute(
          path: '/empower',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Empowermentscreen(),
            );
          }),
          GoRoute(
          path: '/solar',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Solarscreen(),
            );
          }),
          GoRoute(
          path: '/unlocking',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Unlockingscreen(),
            );
          }),
             GoRoute(
          path: '/unleashing',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Unleashingscreen(),
            );
          }),
          
          GoRoute(
          path: '/watthour',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const Watthourscreen(),
            );
          }),
          
    ],
  );
}
