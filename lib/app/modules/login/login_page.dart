import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/login/login_controller.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import 'login_controller.dart';
import 'widgets/EntrarButtonWidget.dart';
import 'widgets/checkBoxWidget.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController(text: controller.email);
    var passwordController = TextEditingController(text: controller.password);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(gradient: AppGradients.blueGradient),
              child: Image.asset('assets/images/logoMaua.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                onChanged: controller.setEmail,
                controller: emailController,
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
              padding: const EdgeInsets.all(8),
              child: Observer(
                builder: (_) {
                  return TextField(
                    onChanged: controller.setPassword,
                    controller: passwordController,
                    obscureText: controller.passwordVisibility,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: AppColors.strongLetter),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelText: 'Senha',
                        suffixIcon: InkWell(
                          onTap: controller.changePasswordVisibility,
                          child: Icon(
                            controller.passwordVisibility
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.darkBlue,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.vpn_key,
                          color: AppColors.darkBlue,
                        )),
                  );
                },
              ),
            ),
            Observer(builder: (_) {
              return CheckBoxWidget(
                isChecked: controller.isChecked,
                onChanged: controller.setIsChecked,
              );
            }),
            SizedBox(
              height: 8,
            ),
            Observer(builder: (_) {
              return Center(
                child: Text(
                  controller.erros,
                  style: TextStyle(color: AppColors.red),
                ),
              );
            }),
            //  controller.erros != '' ? Text(controller.erros) : Container(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            EntrarButtonWidget(onPressed: () {
              controller.login();
            }),
            SizedBox(
              height: 4,
            ),
            TextButton(
              onPressed:
                  () {}, //completar quando for feito a função do botão "esqueci minha senha"
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
