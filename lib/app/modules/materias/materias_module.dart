import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias/materias_controller.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/pages/file-view/file_view_controller.dart';
import 'package:system_maua_front/app/modules/materias/pages/file-view/file_view_page.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-aulas/materias_aulas_controller.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-aulas/materias_aulas_page.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-introducao/materias_introducao_controller.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-introducao/materias_introducao_page.dart';
import 'package:system_maua_front/app/modules/materias/pages/modal-buttom-sheet/modal_buttom_sheet_controller.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

import 'materias_page.dart';

class MateriasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MateriasController(i())),
    Bind.lazySingleton<IMateriasRepository>((i) => MateriasRepository()),
    Bind.lazySingleton((i) => MateriasIntroducaoController(
        repository: i(),
        codigoMateria: (i.args?.data as MateriasModel).codigoMateria)),
    Bind.lazySingleton((i) => FileViewController(
        repository: i(), url: (i.args?.data as ArquivosModel).url)),
    Bind.lazySingleton((i) => MateriasAulasController(
          repository: i(),
          codigoMateria: (i.args?.data as MateriasModel).codigoMateria,
          idPagina: (i.args?.params['id'] as int),
        )),
    Bind.lazySingleton((i) => ModalButtomController(
        repository: i(),
        codigoMateria: (i.args?.data as MateriasModel).codigoMateria)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => MateriasPage(),
    ),
    ChildRoute(
      '/apresentacao',
      child: (_, args) => MateriasIntroducaoPage(
        nomeMateria: (args.data as MateriasModel).nomeMateria!.name,
      ),
    ),
    ChildRoute(
      '/plano-ensino',
      child: (_, args) => FileViewPage(),
    ),
    ChildRoute('/aula/:id',
        child: (_, args) => MateriasAulasPage(
              nomeMateria: (args.data as MateriasModel).nomeMateria!.name,
            )),
  ];
}
