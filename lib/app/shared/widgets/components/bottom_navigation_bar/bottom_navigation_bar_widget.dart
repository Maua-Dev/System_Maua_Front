import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/widgets/components/bottom_navigation_bar/icon_buttom_custom_widget.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final bool isOpen;
  const BottomNavigationBarWidget({Key? key, required this.isOpen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: Duration(seconds: 1),
      height: isOpen ? 340 : 70,
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xff02268f), Color(0xff0264FF)])),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButtonCustomWidget(icon: Icon(Icons.home), onPressed: () {}),
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
  }
}
