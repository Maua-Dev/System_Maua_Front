import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/ic/ic_controller.dart';
import 'package:system_maua_front/app/modules/ic/models/ic_model.dart';
import 'package:system_maua_front/app/modules/ic/pages/descricao_ic/ic_descricao_page.dart';
import 'package:system_maua_front/app/modules/ic/repositories/ic_repository.dart';
import 'package:system_maua_front/app/modules/ic/repositories/ic_repository_interface.dart';

import 'ic_page.dart';

class IcModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => IcController(repository: i())),
    Bind.lazySingleton<IIcRepository>((i) => IcRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => IcPage(),
    ),
    ChildRoute(
      '/descricao',
      child: (_, args) => IcDescricaoPage(
        icModel: args.data as IcModel,
      ),
    ),
  ];
}
