import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/auth/auth_controller.dart';
import 'package:system_maua_front/app/modules/user-configuration/widgets/app_bar_user_configuration_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import 'widgets/navigation_widget.dart';

class UserConfigurationPage extends StatefulWidget {
  final String username;
  final String userRa;
  final String userPhoto;
  const UserConfigurationPage({
    Key? key,
    required this.username,
    required this.userRa,
    required this.userPhoto,
  }) : super(key: key);

  @override
  _UserConfigurationPageState createState() => _UserConfigurationPageState();
}

class _UserConfigurationPageState
    extends ModularState<UserConfigurationPage, AuthController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarUserConfiguration(
              username: widget.username,
              userRa: widget.userRa,
              userPhoto: widget.userPhoto,
            ),
            Divider(
              thickness: 3,
            ),
            NavigationWidget(title: 'Configurações', icon: Icons.settings),
            NavigationWidget(title: 'Segurança', icon: Icons.lock),
            NavigationWidget(title: 'Help', icon: Icons.help_outline),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: ElevatedButton(
                onPressed: () async {
                  await controller.logout();
                  Modular.to.navigate('/login');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width * .7, 50),
                ),
                child: Text(
                  'Sair',
                  style: AppTextStyles.cardH3.copyWith(color: AppColors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
