import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/materias/pages/widgets/grid_fotos_nome_professores.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';
import 'package:system_maua_front/app/shared/models/professores_model.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';

class ApresentacaoPage extends StatelessWidget {
  final TipoMateriaEnum tipoMateria;
  final String foto;
  final List<ProfessoresModel> professores;
  final ArquivosModel? arquivo;
  final List<String>? fotosProfessores;
  ApresentacaoPage({
    Key? key,
    required this.tipoMateria,
    required this.foto,
    required this.professores,
    this.arquivo,
    this.fotosProfessores,
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
                  style: TextStyle(
                      color: AppColors.strongLetter,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
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
              arquivo == null
                  ? SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .08,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              arquivo!.arquivosEnum.iconeArquivo,
                              Text(arquivo!.tituloArquivo),
                            ],
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Docentes da disciplina',
                  style: TextStyle(
                      color: AppColors.strongLetter,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height * .3,
                  child: Expanded(
                    child: GridFotoNomeProfessores(
                      listaProfessores: professores,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
