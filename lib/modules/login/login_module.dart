import 'package:appfilmes/application/modules/modeles.dart';
import 'package:appfilmes/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class LoginModule implements Module {
  
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => LoginPage(),
    ),
  ];
}
