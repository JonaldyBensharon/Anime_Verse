import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:anime_verse/screens/detail_Screen.dart';
import 'package:anime_verse/screens/favorite_screen.dart';
import 'package:anime_verse/screens/home_screen.dart';
import 'package:anime_verse/screens/profile_screen.dart';
import 'package:anime_verse/screens/signin_screen.dart';
import 'package:anime_verse/screens/signup_screen.dart';


final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();


GoRouter createRouter() {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/sign-in',
        builder: (context, state) => const SignInScreen()
      ),
      GoRoute(
        path: '/sign-up',
        builder: (context, state) => const SignUpScreen()
      ),
      GoRoute(
        path: '/details',
        builder: (context, state) => const DetailScreen()
      ),
      
      ShellRoute(
        routes:[
          GoRoute(
            path: '/home',
            builder: (context, state) => const HomeScreen()
          ),
          GoRoute(
            path: '/favorite',
            builder: (context, state) => const FavoriteScreen()
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const ProfileScreen()
          ),
        ]
      )
      
    ]
  )
}