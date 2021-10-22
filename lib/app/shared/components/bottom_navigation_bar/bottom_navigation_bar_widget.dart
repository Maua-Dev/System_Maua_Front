import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/widgets/closed_bottom_navigation_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import 'widgets/navigation_bar_buttons_widget.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final bool isOpen;
  final Function()? onPressed;
  const BottomNavigationBarWidget(
      {Key? key, required this.isOpen, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 300),
      height: isOpen
          ? (MediaQuery.of(context).size.height > 760
              ? MediaQuery.of(context).size.height * 0.35
              : MediaQuery.of(context).size.height * 0.4)
          : (MediaQuery.of(context).size.height > 760
              ? MediaQuery.of(context).size.height * 0.09
              : MediaQuery.of(context).size.height * 0.1),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
            decoration: BoxDecoration(gradient: AppGradients.blueGradient),
            child: isOpen
                ? ListView(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height < 650
                              ? MediaQuery.of(context).size.height * 0.11
                              : MediaQuery.of(context).size.height * 0.09,
                          child: ClosedBottomNavigationBar(
                            onPressed: () {
                              onPressed!();
                            },
                          )),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.31,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: GridView.count(
                            childAspectRatio: 1.8,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            crossAxisSpacing: 48,
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
                  )
                : ClosedBottomNavigationBar()),
      ),
    );
  }
}
