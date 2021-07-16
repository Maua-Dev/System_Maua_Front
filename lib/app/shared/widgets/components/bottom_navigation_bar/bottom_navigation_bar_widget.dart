import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/widgets/components/bottom_navigation_bar/icon_buttom_custom_widget.dart';
import 'package:system_maua_front/app/shared/widgets/components/bottom_navigation_bar/navigation_bar_buttons_widget.dart';
import 'package:system_maua_front/shared/themes/app_gradients.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final bool isOpen;
  const BottomNavigationBarWidget({Key? key, required this.isOpen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!isOpen) {
      return AnimatedContainer(
        curve: Curves.easeInOut,
        duration: Duration(seconds: 1),
        height: isOpen ? 340 : 70,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            decoration: BoxDecoration(gradient: AppGradients.blueGradient),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButtonCustomWidget(
                    icon: Icon(Icons.home), onPressed: () {}),
                IconButtonCustomWidget(
                    icon: Icon(Icons.date_range), onPressed: () {}),
                SizedBox(),
                IconButtonCustomWidget(
                    icon: Icon(Icons.playlist_add_check), onPressed: () {}),
                IconButtonCustomWidget(
                    icon: Icon(Icons.help_outline_outlined), onPressed: () {}),
              ],
            ),
          ),
        ),
      );
    } else {
      return AnimatedContainer(
        curve: Curves.easeInOut,
        duration: Duration(seconds: 1),
        height: isOpen ? 340 : 70,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            decoration: BoxDecoration(gradient: AppGradients.blueGradient),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButtonCustomWidget(
                          icon: Icon(Icons.home), onPressed: () {}),
                      IconButtonCustomWidget(
                          icon: Icon(Icons.date_range), onPressed: () {}),
                      SizedBox(),
                      IconButtonCustomWidget(
                          icon: Icon(Icons.playlist_add_check),
                          onPressed: () {}),
                      IconButtonCustomWidget(
                          icon: Icon(Icons.help_outline_outlined),
                          onPressed: () {}),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 84, vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NavigationBarButtonsWidget(
                              titulo: 'Matérias',
                              icon: Icons.library_books,
                              onTap: () {},
                            ),
                            NavigationBarButtonsWidget(
                              titulo: 'Mural',
                              icon: Icons.language,
                              onTap: () {},
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NavigationBarButtonsWidget(
                                titulo: 'ICs',
                                icon: Icons.biotech_rounded,
                                onTap: () {},
                              ),
                              NavigationBarButtonsWidget(
                                titulo: 'Estágios',
                                icon: Icons.person,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
