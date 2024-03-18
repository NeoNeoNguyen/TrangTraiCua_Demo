// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:trangtraicua_demo/ui/login/ui/login.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color.fromARGB(255, 173, 0, 6),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
        title: Text(
          "QUÊN MẬT KHẨU",
          style: TextStyle(
              color: Color.fromARGB(255, 173, 0, 6),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
          child: Column(
              children: const [
                Image(
                  image: AssetImage('assets/images/Group 6998@2x.png'),
                  width: 400,
                  height: 150,
                ),
                SizedBox(height: 10),
                Text(
                  'Vui lòng liên hệ hotline bên dưới để yêu cầu lấy lại mật khẩu cho tài khoản của bạn',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  '0123456789',
                  style: TextStyle(
                    color: Color.fromARGB(255, 173, 0, 6),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
        ),
    );
  }
}
