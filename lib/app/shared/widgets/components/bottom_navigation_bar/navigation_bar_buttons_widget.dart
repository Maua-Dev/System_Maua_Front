import 'package:flutter/material.dart';

class NavigationBarButtonsWidget extends StatelessWidget {
  final Function()? onTap;
  final String titulo;
  final IconData icon;
  const NavigationBarButtonsWidget(
      {Key? key, this.onTap, required this.titulo, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 110,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Color(0xff003C9C),
                size: 70,
              ),
              Text(
                titulo,
                style: TextStyle(color: Color(0xff003C9C), fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
