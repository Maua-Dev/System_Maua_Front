import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/widgets/icon_buttom_custom_widget.dart';

class ClosedBottomNavigationBar extends StatelessWidget {
  const ClosedBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButtonCustomWidget(
            size: MediaQuery.of(context).size.height * 0.044,
            icon: Icons.home,
            onPressed: () {
              Modular.to.navigate('/home');
            }),
        IconButtonCustomWidget(
            size: MediaQuery.of(context).size.height * 0.04,
            icon: Icons.calendar_today,
            onPressed: () {
              Modular.to.pushNamed('/calendario');
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(),
        ),
        IconButtonCustomWidget(
            size: MediaQuery.of(context).size.height * 0.049,
            icon: Icons.fact_check,
            onPressed: () {
              Modular.to.pushNamed('/medias');
            }),
        IconButtonCustomWidget(
            size: MediaQuery.of(context).size.height * 0.049,
            icon: Icons.help_outline_outlined,
            onPressed: () {
              Modular.to.pushNamed('/help');
            }),
      ],
    );
  }
}
