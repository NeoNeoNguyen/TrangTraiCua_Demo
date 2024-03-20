// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_types_as_parameter_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trangtraicua_demo/ui/home/ui/home.dart';
import 'package:trangtraicua_demo/ui/login/bloc/login_bloc.dart';
import 'package:trangtraicua_demo/ui/login/ui/resetpass.dart';
import 'package:trangtraicua_demo/widgets/button/primary_button.dart';
import 'package:trangtraicua_demo/widgets/text/title_top_dropdown_box.dart';
import 'package:trangtraicua_demo/widgets/textbox/input_box.dart';
import 'package:trangtraicua_demo/widgets/textbox/password_textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //final _usernameController = TextEditingController();
  //final _passwordController = TextEditingController();
  //bool _obscureText = true;

  final LoginBloc loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
        bloc: loginBloc,
        listener: (context, state) {
          if (state is LoginClickButtonLoginState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          } else if (state is LoginClickResetPassState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ResetPass()));
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 400,
                    height: 150,
                  ),
                  SizedBox(height: 20),
                  TitleTextBox(title: 'Tên đăng nhập'),
                  SizedBox(height: 10),
                  InputBox(
                    hintText: 'Tên đăng nhập',
                    keyboardType: TextInputType.none,
                    onChanged: (String) {},
                  ),
                  SizedBox(height: 16),
                  TitleTextBox(title: 'Mật khẩu'),
                  SizedBox(height: 10),
                  PasswordTextField(
                    hintText: 'Mật khẩu',
                    keyboardType: TextInputType.none,
                  ),
                  SizedBox(height: 16),
                  PrimaryButton(
                    onTap: () {
                      loginBloc.add(ClickButtonLoginEvent());
                    },
                    text: 'Đăng nhập',
                  ),
                  SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      loginBloc.add(ClickResetPassEvent());
                    },
                    child: Text(
                      'Quên mật khẩu?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 173, 0, 6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
