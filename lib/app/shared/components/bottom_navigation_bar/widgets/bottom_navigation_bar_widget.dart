import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import 'icon_buttom_custom_widget.dart';
import 'navigation_bar_buttons_widget.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final bool isOpen;
  final Function()? onPressed;
  const BottomNavigationBarWidget(
      {Key? key, required this.isOpen, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!isOpen) {
      return AnimatedContainer(
        curve: Curves.easeInOut,
        duration: Duration(seconds: 1),
        height: isOpen
            ? MediaQuery.of(context).size.height * 0.4
            : MediaQuery.of(context).size.height * 0.1,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            decoration: BoxDecoration(gradient: AppGradients.blueGradient),
            child: Row(
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
            ),
          ),
        ),
      );
    } else {
      return AnimatedContainer(
        curve: Curves.easeInOut,
        duration: Duration(seconds: 1),
        height: isOpen
            ? MediaQuery.of(context).size.height * 0.4
            : MediaQuery.of(context).size.height * 0.1,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            decoration: BoxDecoration(gradient: AppGradients.blueGradient),
            child: ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: Row(
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
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.31,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: GridView.count(
                      childAspectRatio: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 24,
                      children: [
                        NavigationBarButtonsWidget(
                          titulo: 'Matérias',
                          icon: Icons.library_books,
                          onTap: () {
                            Modular.to.pushNamed('/materias');
                            onPressed!();
                          },
                        ),
                        NavigationBarButtonsWidget(
                          titulo: 'Mural',
                          icon: Icons.language,
                          onTap: () {
                            Modular.to.pushNamed('/mural');
                            onPressed!();
                          },
                        ),
                        NavigationBarButtonsWidget(
                          titulo: 'ICs',
                          icon: Icons.biotech_rounded,
                          onTap: () {
                            Modular.to.pushNamed('/ic');
                            onPressed!();
                          },
                        ),
                        NavigationBarButtonsWidget(
                          titulo: 'Reservas',
                          icon: FontAwesome.calendar,
                          onTap: () {
                            Modular.to.pushNamed('/reservas');
                            onPressed!();
                          },
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      );
    }
  }
}
