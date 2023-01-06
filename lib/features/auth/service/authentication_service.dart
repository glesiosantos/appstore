import 'package:appstore/core/supabase_credentials.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthenticationService {
  Future<String?> signUp(
      {required String email, required String password}) async {
    AuthResponse response = await SupabaseCrendentials.client.auth
        .signUp(email: email, password: password);

    return null;
  }

  Future<String?> signIn(
      {required String email, required String password}) async {
    try {
      AuthResponse response = await SupabaseCrendentials.client.auth
          .signInWithPassword(email: email, password: password);
      print(response);
      return response.user!.id;
    } on AuthException catch (error) {
      print('******************* ${error.message}');
      return null;
    } catch (error) {
      print('******************* $error');
      return null;
    }
  }
}
