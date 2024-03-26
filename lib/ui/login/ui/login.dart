//import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trangtraicua_demo/network/api_login.dart';
import 'package:trangtraicua_demo/router/app_router_const.dart';
import 'package:trangtraicua_demo/ui/login/bloc/login_bloc.dart';
import 'package:trangtraicua_demo/widgets/button/primary_button.dart';
import 'package:trangtraicua_demo/widgets/hash/hash.dart';
import 'package:trangtraicua_demo/widgets/text/title_top_dropdown_box.dart';
import 'package:trangtraicua_demo/widgets/textbox/input_box.dart';
import 'package:trangtraicua_demo/widgets/textbox/password_textfield.dart';
// import 'package:trangtraicua_demo/widgets/textbox/input_box.dart';
// import 'package:trangtraicua_demo/widgets/textbox/password_textfield.dart';
// import 'package:crypto/crypto.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginBloc _loginBloc = LoginBloc();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    final username = _usernameController.text.toString();
    final password = _passwordController.text.toString();

    //Kiểm tra nếu tên đăng nhập hoặc mật khẩu trống
    if (username.isEmpty || password.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Lỗi'),
            content: Text(
                'Vui lòng điền đầy đủ thông tin tên đăng nhập và mật khẩu.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    String hashedPassword = PasswordHasher.hashPassword(password);

    try {
      final response = await ApiService.loginUser(username, hashedPassword);
      if (response['status'] == 200) {
        GoRouter.of(context).pushNamed(RouteConstants.homeRouteName);
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Đăng nhập thất bại'),
              content: Text(response['message']),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      print('Error: $e');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Đã xảy ra lỗi'),
            content: Text(
                'Có lỗi xảy ra trong quá trình đăng nhập. Vui lòng thử lại sau.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      bloc: _loginBloc,
      listener: (context, state) {
        if (state is LoginClickResetPassState) {
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(builder: (context) => ResetPass()),
          // );
          GoRouter.of(context).pushNamed(RouteConstants.homeRouteName);
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Image(
                  image: AssetImage('assets/ic_logo.png'),
                  width: 400,
                  height: 150,
                ),
                SizedBox(height: 20),
                TitleTextBox(title: 'Tên đăng nhập'),
                SizedBox(height: 10),
                InputBox(
                  controller: _usernameController,
                  hintText: 'Tên đăng nhập',
                  keyboardType: TextInputType.text,
                  autofocus: true,
                  onChanged: (value) {},
                ),
                // TextField(
                //   controller: _usernameController,
                //   decoration: InputDecoration(
                //     hintText: 'Nhập tên đăng nhập',
                //   ),
                // ),
                SizedBox(height: 16),
                TitleTextBox(title: 'Mật khẩu'),
                SizedBox(height: 10),
                PasswordTextField(
                  controller: _passwordController,
                  hintText: 'Mật khẩu',
                  keyboardType: TextInputType.text,
                  autofocus: true,
                ),
                // TextField(
                //   controller: _passwordController,
                //   decoration: InputDecoration(
                //     hintText: 'Mật khẩu',
                //   ),
                // ),
                SizedBox(height: 16),
                PrimaryButton(
                  onTap: _login,
                  text: 'Đăng nhập',
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    _loginBloc.add(ClickResetPassEvent());
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
      },
    );
  }
}
