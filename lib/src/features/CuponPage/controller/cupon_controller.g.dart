// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cupon_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CuponController on _CuponController, Store {
  late final _$ticketAtom = Atom(
    name: '_CuponController.ticket',
    context: context,
  );

  @override
  TicketDto? get ticket {
    _$ticketAtom.reportRead();
    return super.ticket;
  }

  @override
  set ticket(TicketDto? value) {
    _$ticketAtom.reportWrite(value, super.ticket, () {
      super.ticket = value;
    });
  }

  late final _$loadingAtom = Atom(
    name: '_CuponController.loading',
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
    name: '_CuponController.status',
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

  late final _$fetchCuponAsyncAction = AsyncAction(
    '_CuponController.fetchCupon',
    context: context,
  );

  @override
  Future<bool> fetchCupon() {
    return _$fetchCuponAsyncAction.run(() => super.fetchCupon());
  }

  @override
  String toString() {
    return '''
ticket: ${ticket},
loading: ${loading},
status: ${status}
    ''';
  }
}
