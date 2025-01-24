import 'package:appfilmes/application/modules/modeles.dart';
import 'package:appfilmes/modules/splash/splash_bindings.dart';
import 'package:appfilmes/modules/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: SplashBindings(),
    ),
  ];
}