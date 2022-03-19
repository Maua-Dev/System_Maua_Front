import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class ListaNotasCard extends StatelessWidget {
  final Function()? onTap;
  final String? texto;
  final double? nota;
  final int? mediaMaua;

  ListaNotasCard({
    Key? key,
    this.onTap,
    this.texto,
    this.nota,
    this.mediaMaua,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '$texto',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Text(
                    '$nota',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 15,
                    color: Color.fromRGBO(2, 90, 200, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
