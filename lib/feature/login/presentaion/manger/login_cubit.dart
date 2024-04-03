import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery/feature/login/data/models/user_model.dart';
import 'package:my_gallery/feature/login/presentaion/manger/login_state.dart';

import '../../../../core/uitls/api_service.dart';

class Logincubit extends Cubit<LoginState> {
  Logincubit() : super(LoginInitialstate());
  static Logincubit get(context) => BlocProvider.of(context);
  late LoginModel loginModel;
  APIService apiService = APIService();
  void uaerlogin({
    required String email,
    required String password,
  }) {
    emit(LoginLoadingstate());
    apiService.post(endPoint: 'auth/login', data: {
      'email': email,
      'password': password,
    }).then((value) {
      loginModel = LoginModel.fromjason(value);
      emit(LoginSuccessState(loginModel));
    }).catchError((error) {
      emit(LoginErrorState(error.toString()));
    });
  }
}
