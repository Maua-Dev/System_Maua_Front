import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/materias/widgets/grid_fotos_professores.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class MateriaCardWidget extends StatelessWidget {
  final String nomeMateria;
  final List<String>? listaFotosProfessores;
  final String fotoMateria;
  final void Function()? onTap;
  const MateriaCardWidget(
      {Key? key,
      required this.nomeMateria,
      this.listaFotosProfessores,
      required this.fotoMateria,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.16,
          decoration: BoxDecoration(
              boxShadow: [AppColors.shadow],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
          child: Stack(children: [
            Column(
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
                            image: NetworkImage(fotoMateria),
                            fit: BoxFit.cover))),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    child: Center(
                      child: Text(
                        nomeMateria,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: GridFotosProfessores(
                listaFotos: listaFotosProfessores,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
