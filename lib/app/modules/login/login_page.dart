import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/login/login_controller.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import 'components/EntrarButtonWidget.dart';
import 'components/checkBoxWidget.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginController controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 292,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(gradient: AppGradients.blueGradient),
              child: Image.asset('assets/images/logoMaua.png'),
            ),
            SizedBox(
              height: 72,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                onChanged: (text) {},
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelStyle: TextStyle(color: AppColors.strongLetter),
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.mail,
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: AppColors.strongLetter),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelText: 'Senha',
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
            ),
            CheckBoxWidget(controller: controller),
            SizedBox(
              height: 72,
            ),
            EntrarButtonWidget(),
            SizedBox(
              height: 4,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Esqueci minha senha',
                style: TextStyle(color: AppColors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
