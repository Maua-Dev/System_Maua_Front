import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/configuracoes-usuario/widgets/app_bar_configuracoes_usuario_widget.dart';
import 'package:system_maua_front/app/modules/configuracoes-usuario/widgets/navigation_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class ConfiguracoesUsuarioPage extends StatefulWidget {
  const ConfiguracoesUsuarioPage({
    Key? key,
  }) : super(key: key);

  @override
  _ConfiguracoesUsuarioPageState createState() =>
      _ConfiguracoesUsuarioPageState();
}

class _ConfiguracoesUsuarioPageState extends State<ConfiguracoesUsuarioPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarConfiguracoesUsuario(
                nomeAluno: 'Hector Guerrini', raAluno: '17.00163-3'),
            Divider(
              thickness: 3,
            ),
            NavigationWidget(titulo: 'Configurações', icone: Icons.settings),
            NavigationWidget(titulo: 'Segurança', icone: Icons.lock),
            NavigationWidget(titulo: 'Help', icone: Icons.help_outline),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: TextButton(
                onPressed: () {},
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
