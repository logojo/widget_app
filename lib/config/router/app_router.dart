import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/screens.dart';

//Se instalo el paquete go_router del la pub.dev
// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const Buttons(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const Cards(),
    ),
  ],
);
