import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/professores_model.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class ApresentacaoPage extends StatelessWidget {
  final TipoMateriaEnum tipoMateria;
  final String foto;
  final List<ProfessoresModel> professores;
  ApresentacaoPage({
    Key? key,
    required this.tipoMateria,
    required this.foto,
    required this.professores,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          icon: Icons.library_books,
          title: tipoMateria.name,
          actionWidget: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(foto), fit: BoxFit.cover),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Introdução',
                  style: TextStyle(color: AppColors.strongLetter, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('pipipipipópópópipipipipópópó'),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .12,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
