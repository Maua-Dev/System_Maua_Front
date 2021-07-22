import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import 'icon_buttom_custom_widget.dart';
import 'navigation_bar_buttons_widget.dart';

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
                    icon: Icon(Icons.home),
                    onPressed: () {}),
                IconButtonCustomWidget(
                    size: MediaQuery.of(context).size.height * 0.044,
                    icon: Icon(Icons.date_range),
                    onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(),
                ),
                IconButtonCustomWidget(
                    size: MediaQuery.of(context).size.height * 0.049,
                    icon: Icon(Icons.playlist_add_check),
                    onPressed: () {}),
                IconButtonCustomWidget(
                    size: MediaQuery.of(context).size.height * 0.049,
                    icon: Icon(Icons.help_outline_outlined),
                    onPressed: () {}),
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
              shrinkWrap: true,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButtonCustomWidget(
                          size: MediaQuery.of(context).size.height * 0.044,
                          icon: Icon(Icons.home),
                          onPressed: () {}),
                      IconButtonCustomWidget(
                          size: MediaQuery.of(context).size.height * 0.044,
                          icon: Icon(Icons.date_range),
                          onPressed: () {}),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: SizedBox(),
                      ),
                      IconButtonCustomWidget(
                          size: MediaQuery.of(context).size.height * 0.049,
                          icon: Icon(Icons.playlist_add_check),
                          onPressed: () {}),
                      IconButtonCustomWidget(
                          size: MediaQuery.of(context).size.height * 0.049,
                          icon: Icon(Icons.help_outline_outlined),
                          onPressed: () {}),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.31,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1.5,
                                child: NavigationBarButtonsWidget(
                                  titulo: 'Matérias',
                                  icon: Icons.library_books,
                                  onTap: () {},
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1.5,
                                child: NavigationBarButtonsWidget(
                                  titulo: 'Mural',
                                  icon: Icons.language,
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1.5,
                                child: NavigationBarButtonsWidget(
                                  titulo: 'ICs',
                                  icon: Icons.biotech_rounded,
                                  onTap: () {},
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1.5,
                                child: NavigationBarButtonsWidget(
                                  titulo: 'Estágios',
                                  icon: Icons.person,
                                  onTap: () {},
                                ),
                              ),
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
      );
    }
  }
}
