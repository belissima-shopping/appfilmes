import 'package:appfilmes/repositories/login/login_repository.dart';
import 'package:appfilmes/repositories/login/login_repository_impl.dart';
import 'package:appfilmes/services/login/login_service.dart';
import 'package:appfilmes/services/login/login_service_impl.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl());
    Get.lazyPut<LoginService>(() => LoginServiceImpl(loginRepository: Get.find()));
  }
}