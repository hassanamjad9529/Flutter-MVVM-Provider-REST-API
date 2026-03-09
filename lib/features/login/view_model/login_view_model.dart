import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:testt/repository/auth_api/auth_http_api_repository.dart';
import '../../../model/user/user_model.dart';
import '../../../services/session_manager/session_controller.dart';

import '../../../repository/auth_api/auth_repository.dart';


class LoginViewModel with ChangeNotifier {

  AuthRepository authRepository  = AuthHttpApiRepository();
  LoginViewModel();

  bool _loginLoading = false ;
  bool get loginLoading => _loginLoading ;

  setLoginLoading(bool value){
    _loginLoading = value;
    notifyListeners();
  }

  //creating getter method to store value of input email
  String _email = '' ;
  String get email => _email ;

  setEmail(String email){
    _email = email ;
  }

  //creating getter method to store value of input password
  String _password = '' ;
  String get password => _password ;

  setPassword(String password){
    _password = password ;
  }

  Future<UserModel> loginApi(dynamic data) async {

    try {
      setLoginLoading(true);
      final response = await authRepository.loginApi(data);
      await SessionController().saveUserInPreference(response);
      await SessionController().getUserFromPreference();
      setLoginLoading(false);
      return response ;
    }catch(e){
      setLoginLoading(false);
      throw Exception(e);
    }

  }

}