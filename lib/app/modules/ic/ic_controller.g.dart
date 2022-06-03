// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ic_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$IcController on IcControllerBase, Store {
  Computed<List<String>>? _$listaTitulosIcComputed;

  @override
  List<String> get listaTitulosIc => (_$listaTitulosIcComputed ??=
          Computed<List<String>>(() => super.listaTitulosIc,
              name: 'IcControllerBase.listaTitulosIc'))
      .value;

  late final _$troncoAtom =
      Atom(name: 'IcControllerBase.tronco', context: context);

  @override
  TroncoEnum get tronco {
    _$troncoAtom.reportRead();
    return super.tronco;
  }

  @override
  set tronco(TroncoEnum value) {
    _$troncoAtom.reportWrite(value, super.tronco, () {
      super.tronco = value;
    });
  }

  late final _$dadosTroncoAtom =
      Atom(name: 'IcControllerBase.dadosTronco', context: context);

  @override
  List<IcModel> get dadosTronco {
    _$dadosTroncoAtom.reportRead();
    return super.dadosTronco;
  }

  @override
  set dadosTronco(List<IcModel> value) {
    _$dadosTroncoAtom.reportWrite(value, super.dadosTronco, () {
      super.dadosTronco = value;
    });
  }

  late final _$getDadosTroncoAsyncAction =
      AsyncAction('IcControllerBase.getDadosTronco', context: context);

  @override
  Future<void> getDadosTronco() {
    return _$getDadosTroncoAsyncAction.run(() => super.getDadosTronco());
  }

  late final _$setTroncoAsyncAction =
      AsyncAction('IcControllerBase.setTronco', context: context);

  @override
  Future<void> setTronco(TroncoEnum value) {
    return _$setTroncoAsyncAction.run(() => super.setTronco(value));
  }

  @override
  String toString() {
    return '''
tronco: ${tronco},
dadosTronco: ${dadosTronco},
listaTitulosIc: ${listaTitulosIc}
    ''';
  }
}
