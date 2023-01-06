import 'package:appstore/core/constants/app_colors.dart';
import 'package:appstore/core/helpers/validators.dart';
import 'package:appstore/features/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  final _globalKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwdController = TextEditingController();

  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authentication = Provider.of<AuthController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _globalKey,
            child: ListView(
              padding: const EdgeInsets.all(20),
              shrinkWrap: true,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: 'E-mail',
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  validator: (email) {
                    if (!validEmail(email!)) {
                      return "E-mail invalido";
                    }

                    if (email.isEmpty) {
                      return 'E-mail obrigatório';
                    }

                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwdController,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return 'Senha Invalida';
                    }

                    return null;
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                      onPressed: () {},
                      child: const Text(
                        'Esqueci a minha senha',
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      )),
                ),
                SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_globalKey.currentState!.validate()) {
                        String email = _emailController.text;
                        String passwd = _passwdController.text;
                        authentication.login(email: email, password: passwd);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor),
                    child: const Text(
                      'Entrar',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
