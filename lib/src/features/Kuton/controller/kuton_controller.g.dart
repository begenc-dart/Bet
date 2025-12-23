// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kuton_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$KutonController on _KutonController, Store {
  late final _$isSelectAtom = Atom(
    name: '_KutonController.isSelect',
    context: context,
  );

  @override
  bool get isSelect {
    _$isSelectAtom.reportRead();
    return super.isSelect;
  }

  @override
  set isSelect(bool value) {
    _$isSelectAtom.reportWrite(value, super.isSelect, () {
      super.isSelect = value;
    });
  }

  late final _$_KutonControllerActionController = ActionController(
    name: '_KutonController',
    context: context,
  );

  @override
  dynamic change(bool value) {
    final _$actionInfo = _$_KutonControllerActionController.startAction(
      name: '_KutonController.change',
    );
    try {
      return super.change(value);
    } finally {
      _$_KutonControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSelect: ${isSelect}
    ''';
  }
}
