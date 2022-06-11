import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/login/login_controller.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import 'package:system_maua_front/app/shared/themes/breakpoints.dart';
import 'login_controller.dart';
import 'widgets/entrar_button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController(text: controller.email);
    var passwordController = TextEditingController(text: controller.password);
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: AppGradients.blueGradient,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/logoMaua.png',
                    ),
                  ),
                  Observer(builder: (_) {
                    return ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: constraints.maxWidth < mobileBreakpoint
                              ? 500
                              : 700),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: controller.loginModalIsOpen
                            ? MediaQuery.of(context).size.height * 0.6
                            : 0,
                        decoration: BoxDecoration(
                          color: AppColors.shape,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 32),
                                child: Text(
                                  'Insira seus dados',
                                  style: TextStyle(
                                    color: AppColors.brandingBlue,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: TextField(
                                  onChanged: controller.setEmail,
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    labelStyle: TextStyle(
                                        color: AppColors.generalLetter),
                                    labelText: 'Email',
                                    prefixIcon: Icon(
                                      Icons.mail,
                                      color: AppColors.brandingBlue,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Observer(
                                  builder: (_) {
                                    return TextField(
                                      onChanged: controller.setPassword,
                                      controller: passwordController,
                                      obscureText:
                                          controller.passwordVisibility,
                                      decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              color: AppColors.generalLetter),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          labelText: 'Senha',
                                          suffixIcon: InkWell(
                                            onTap: controller
                                                .changePasswordVisibility,
                                            child: Icon(
                                              controller.passwordVisibility
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: AppColors.brandingBlue,
                                            ),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.vpn_key,
                                            color: AppColors.brandingBlue,
                                          )),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              // Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                              //   TextButton(
                              //     onPressed:
                              //         () {}, //completar quando for feito a função do botão "esqueci minha senha"
                              //     child: Text(
                              //       'Esqueci minha senha',
                              //       style: TextStyle(color: AppColors.brandingBlue),
                              //     ),
                              //   ),
                              // ]),
                              SizedBox(
                                height: 8,
                              ),
                              Observer(builder: (_) {
                                return Center(
                                  child: Text(
                                    controller.errors,
                                    style: TextStyle(color: Colors.red),
                                  ),
                                );
                              }),
                              SizedBox(
                                height: 8,
                              ),
                              EntrarButtonWidget(onPressed: () {
                                controller.login();
                              }),
                            ]),
                          ),
                        ),
                      ),
                    );
                  })
                ],
              )));
    });
  }
}
