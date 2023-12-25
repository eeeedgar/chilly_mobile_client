import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _loginController = TextEditingController();
  final _profilePicUrlController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ElevatedButton(
          onPressed: () async {
            // todo: register
          },
          child: const Text('REGISTER'),
        ),
        appBar: AppBar(
          title: Text(
            'Chilly',
            style: AppTextStyle.h1,
          ),
        ),
        body: SafeArea(
          child: Form(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'name',
                  ),
                ),
                TextFormField(
                  controller: _loginController,
                  decoration: const InputDecoration(
                    labelText: 'login',
                  ),
                ),
                TextFormField(
                  controller: _profilePicUrlController,
                  decoration: const InputDecoration(
                    labelText: 'profile image',
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'password',
                  ),
                  obscureText: true,
                  onChanged: (value) {
                    _repeatPasswordController.clear();
                  },
                ),
                TextFormField(
                  controller: _repeatPasswordController,
                  decoration: const InputDecoration(
                    labelText: 'repeat password',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Passwords are different';
                    }
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
