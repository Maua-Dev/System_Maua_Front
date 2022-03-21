import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/auth/auth_controller.dart';
import 'package:system_maua_front/app/modules/configuracoes-usuario/widgets/app_bar_configuracoes_usuario_widget.dart';
import 'package:system_maua_front/app/modules/configuracoes-usuario/widgets/navigation_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class ConfiguracoesUsuarioPage extends StatefulWidget {
  final String nomeAluno;
  final String raAluno;
  final String fotoALuno;
  const ConfiguracoesUsuarioPage({
    Key? key,
    required this.nomeAluno,
    required this.raAluno,
    required this.fotoALuno,
  }) : super(key: key);

  @override
  _ConfiguracoesUsuarioPageState createState() =>
      _ConfiguracoesUsuarioPageState();
}

class _ConfiguracoesUsuarioPageState
    extends ModularState<ConfiguracoesUsuarioPage, AuthController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarConfiguracoesUsuario(
              nomeAluno: widget.nomeAluno,
              raAluno: widget.raAluno,
              fotoAluno: widget.fotoALuno,
            ),
            Divider(
              thickness: 3,
            ),
            NavigationWidget(titulo: 'Configurações', icone: Icons.settings),
            NavigationWidget(titulo: 'Segurança', icone: Icons.lock),
            NavigationWidget(titulo: 'Help', icone: Icons.help_outline),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: TextButton(
                onPressed: () async {
                  await controller.logout();
                  Modular.to.navigate('/login');
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder?>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                      EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: MediaQuery.of(context).size.width * 0.4)),
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(AppColors.lightBlue),
                  elevation: MaterialStateProperty.all<double?>(10),
                ),
                child: Text(
                  'Sair',
                  style: AppTextStyles.appBarHomeBody.copyWith(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
