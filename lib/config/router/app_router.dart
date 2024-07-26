import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/screens.dart';

//Se instalo el paquete go_router del la pub.dev
// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: Home.name,
      path: '/',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      name: Counter.name,
      path: '/counter',
      builder: (context, state) => const Counter(),
    ),
    GoRoute(
      name: Buttons.name,
      path: '/buttons',
      builder: (context, state) => const Buttons(),
    ),
    GoRoute(
      name: Cards.name,
      path: '/cards',
      builder: (context, state) => const Cards(),
    ),
    GoRoute(
      name: Animated.name,
      path: '/animated',
      builder: (context, state) => const Animated(),
    ),
    GoRoute(
      name: AppTutorial.name,
      path: '/tutorial',
      builder: (context, state) => const AppTutorial(),
    ),
    GoRoute(
      name: InfiniteScroll.name,
      path: '/infinite',
      builder: (context, state) => const InfiniteScroll(),
    ),
    GoRoute(
      name: Progress.name,
      path: '/progress',
      builder: (context, state) => const Progress(),
    ),
    GoRoute(
      name: SnackbarScreen.name,
      path: '/snackbar',
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      name: UiControls.name,
      path: '/ui',
      builder: (context, state) => const UiControls(),
    ),
    GoRoute(
      name: ThemeChanger.name,
      path: '/theme-changer',
      builder: (context, state) => const ThemeChanger(),
    ),
  ],
);
