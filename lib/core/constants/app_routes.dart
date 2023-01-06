import 'package:appstore/features/auth/views/sign_in_screen.dart';
import 'package:appstore/features/base/screen/base_screen.dart';

import '../../features/auth/views/sign_up_screen.dart';

class AppRoutes {
  static const String baseRoute = '/';
  static const String signInRoute = '/signIn';
  static const String signUpRoute = '/signUp';

  static final routes = {
    baseRoute: (context) => BaseScreen(),
    signInRoute: (context) => SignInScreen(),
    signUpRoute: (context) => SignUpScreen(),
  };
}
