import 'package:appfilmes/application/ui/loader/loader_mixin.dart';
import 'package:appfilmes/application/ui/messages/messages_mixin.dart';
import 'package:appfilmes/services/login/login_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({
    required LoginService loginService,
  }) : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }
  //TODO: OBS
  Future<void> login() async {
    loading(true);
    await 2.seconds.delay();
    //await Future.delayed(Duration(seconds: 2));
    loading(false);
    message(MessageModel.error(
      title: 'Titulo Erro',
      message: 'Mensagem de Erro',),);
    await 1.seconds.delay();
    message(MessageModel.info(
      title: 'Titulo info',
      message: 'Mensagem de info',),);
  }
}