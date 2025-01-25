import 'package:appfilmes/repositories/login/login_repository.dart';
import 'package:appfilmes/services/login/login_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginServiceImpl implements LoginService {

  final LoginRepository _loginRepository;

  LoginServiceImpl({
    required LoginRepository loginRepository,
  }) : _loginRepository = loginRepository;

  @override
  Future<UserCredential> login() => _loginRepository.login();

}