import 'package:appstore/features/auth/service/authentication_service.dart';
import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  final authenticationService = AuthenticationService();

  Future<String?> register(
      {required String email, required String password}) async {
    await authenticationService.signUp(email: email, password: password);
    return null;
  }

  Future<String?> login(
      {required String email, required String password}) async {
    await authenticationService.signIn(email: email, password: password);
    return null;
  }
}
