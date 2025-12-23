// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainController on _MainController, Store {
  late final _$select_gameAtom = Atom(
    name: '_MainController.select_game',
    context: context,
  );

  @override
  String get select_game {
    _$select_gameAtom.reportRead();
    return super.select_game;
  }

  @override
  set select_game(String value) {
    _$select_gameAtom.reportWrite(value, super.select_game, () {
      super.select_game = value;
    });
  }

  late final _$ticketAtom = Atom(
    name: '_MainController.ticket',
    context: context,
  );

  @override
  MatchDto? get ticket {
    _$ticketAtom.reportRead();
    return super.ticket;
  }

  @override
  set ticket(MatchDto? value) {
    _$ticketAtom.reportWrite(value, super.ticket, () {
      super.ticket = value;
    });
  }

  late final _$loadingAtom = Atom(
    name: '_MainController.loading',
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

  late final _$statusAtom = Atom(
    name: '_MainController.status',
    context: context,
  );

  @override
  Status get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(Status value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$fetchMatchAsyncAction = AsyncAction(
    '_MainController.fetchMatch',
    context: context,
  );

  @override
  Future<bool> fetchMatch() {
    return _$fetchMatchAsyncAction.run(() => super.fetchMatch());
  }

  late final _$_MainControllerActionController = ActionController(
    name: '_MainController',
    context: context,
  );

  @override
  dynamic change(String value) {
    final _$actionInfo = _$_MainControllerActionController.startAction(
      name: '_MainController.change',
    );
    try {
      return super.change(value);
    } finally {
      _$_MainControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
select_game: ${select_game},
ticket: ${ticket},
loading: ${loading},
status: ${status}
    ''';
  }
}
