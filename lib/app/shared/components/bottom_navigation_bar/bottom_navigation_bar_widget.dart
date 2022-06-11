import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/widgets/closed_bottom_navigation_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import '../dialogs/custom_alert_dialog_widget.dart';
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
          ? MediaQuery.of(context).size.height * 0.35
          : MediaQuery.of(context).size.height * 0.08,
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
            decoration: BoxDecoration(gradient: AppGradients.blueGradient),
            child: isOpen
                ? ListView(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: ClosedBottomNavigationBar()),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.27,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          child: Center(
                            child: GridView.count(
                              childAspectRatio: 2,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              children: [
                                NavigationBarButtonsWidget(
                                  titulo: 'Calendário',
                                  icon: Icons.calendar_month,
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const CustomAlertDialogWidget(
                                          title: 'Conteúdo indisponível!',
                                          content:
                                              'Aguarde novas atualizações.',
                                        );
                                      },
                                    );
                                    onPressed!();
                                  },
                                ),
                                NavigationBarButtonsWidget(
                                  titulo: 'Mural',
                                  icon: Icons.language,
                                  onTap: () {
                                    // Modular.to.navigate('/mural');
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const CustomAlertDialogWidget(
                                          title: 'Conteúdo indisponível!',
                                          content:
                                              'Aguarde novas atualizações.',
                                        );
                                      },
                                    );
                                    onPressed!();
                                  },
                                ),
                                NavigationBarButtonsWidget(
                                  titulo: 'ICs',
                                  icon: Icons.biotech_rounded,
                                  onTap: () {
                                    // Modular.to.navigate('/ic');
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const CustomAlertDialogWidget(
                                          title: 'Conteúdo indisponível!',
                                          content:
                                              'Aguarde novas atualizações.',
                                        );
                                      },
                                    );
                                    onPressed!();
                                  },
                                ),
                                NavigationBarButtonsWidget(
                                  titulo: 'Reservas',
                                  icon: FontAwesome.calendar,
                                  onTap: () {
                                    // Modular.to.navigate('/reservas');
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const CustomAlertDialogWidget(
                                          title: 'Conteúdo indisponível!',
                                          content:
                                              'Aguarde novas atualizações.',
                                        );
                                      },
                                    );
                                    onPressed!();
                                  },
                                ),
                              ],
                            ),
                          )),
                    ],
                  )
                : ClosedBottomNavigationBar()),
      ),
    );
  }
}
