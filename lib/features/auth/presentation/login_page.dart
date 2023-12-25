import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/app/router/app_router.gr.dart';
import 'package:chilly_mobile_client/features/auth/data/dto/request/user_login_dto.dart';
import 'package:chilly_mobile_client/features/auth/domain/auth_cubit.dart';
import 'package:chilly_mobile_client/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  appRouter.push(const RegisterRoute());
                },
                child: const Text('CREATE ACCOUNT'),
              ),
              ElevatedButton(
                onPressed: () async {
                  await context.read<AuthCubit>().login(
                        UserLoginDto(
                          login: _loginController.text,
                          password: _passwordController.text,
                        ),
                      );
                  appRouter.replace(const MarkerRoute());
                },
                child: const Text('LOGIN'),
              ),
            ],
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
                    controller: _loginController,
                    decoration: const InputDecoration(
                      labelText: 'login',
                    ),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'password',
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
