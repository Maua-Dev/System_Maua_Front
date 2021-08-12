import 'package:flutter/material.dart';

class MateriaCardWidget extends StatelessWidget {
  final String nomeMateria;
  final List<String>? listaFotosProfessores;
  final String fotoMateria;
  const MateriaCardWidget(
      {Key? key,
      required this.nomeMateria,
      this.listaFotosProfessores,
      required this.fotoMateria})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.095,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(fotoMateria), fit: BoxFit.cover))),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Text(
                  nomeMateria,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
