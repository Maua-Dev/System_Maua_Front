import 'package:system_maua_front/app/modules/ic/models/ic_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tronco_enum.dart';

abstract class IIcRepository {
  Future<List<IcModel>> getDadosTronco(TroncoEnum tronco);
}
