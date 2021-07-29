import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum%20copy.dart';

part 'filter_period_controller.g.dart';

class FilterPeriodController = FilterPeriodControllerBase
    with _$FilterPeriodController;

abstract class FilterPeriodControllerBase with Store {
  @observable
  String filterValue = PeriodEnum.WEEKLY.period;

  @action
  Future<void> changeFilter(String? newValue) async {
    filterValue = newValue!;
  }
}
