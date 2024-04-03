import 'package:my_gallery/feature/login/data/models/user_model.dart';

abstract class LoginState {}

class LoginInitialstate extends LoginState {}

class LoginLoadingstate extends LoginState {}

class LoginSuccessState extends LoginState {
  late final LoginModel loginModel;
  LoginSuccessState(this.loginModel);
}

class LoginErrorState extends LoginState {
  late final String eerror;
  LoginErrorState(this.eerror);
}
