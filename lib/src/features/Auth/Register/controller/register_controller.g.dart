// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterController on _RegisterController, Store {
  late final _$screenAtom = Atom(
    name: '_RegisterController.screen',
    context: context,
  );

  @override
  ObservableFuture<String> get screen {
    _$screenAtom.reportRead();
    return super.screen;
  }

  @override
  set screen(ObservableFuture<String> value) {
    _$screenAtom.reportWrite(value, super.screen, () {
      super.screen = value;
    });
  }

  late final _$loadingAtom = Atom(
    name: '_RegisterController.loading',
    context: context,
  );

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$hasDataAtom = Atom(
    name: '_RegisterController.hasData',
    context: context,
  );

  @override
  bool get hasData {
    _$hasDataAtom.reportRead();
    return super.hasData;
  }

  @override
  set hasData(bool value) {
    _$hasDataAtom.reportWrite(value, super.hasData, () {
      super.hasData = value;
    });
  }

  late final _$tokenGetAsyncAction = AsyncAction(
    '_RegisterController.tokenGet',
    context: context,
  );

  @override
  Future<void> tokenGet() {
    return _$tokenGetAsyncAction.run(() => super.tokenGet());
  }

  late final _$_RegisterControllerActionController = ActionController(
    name: '_RegisterController',
    context: context,
  );

  @override
  void loginApi(
    BuildContext context,
    GlobalKey<FormState> keys,
    VoidCallback completeCallback,
  ) {
    final _$actionInfo = _$_RegisterControllerActionController.startAction(
      name: '_RegisterController.loginApi',
    );
    try {
      return super.loginApi(context, keys, completeCallback);
    } finally {
      _$_RegisterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
screen: ${screen},
loading: ${loading},
hasData: ${hasData}
    ''';
  }
}
