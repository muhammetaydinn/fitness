// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StorageStore on _StorageStoreBase, Store {
  Computed<bool>? _$isLoggedInComputed;

  @override
  bool get isLoggedIn =>
      (_$isLoggedInComputed ??= Computed<bool>(() => super.isLoggedIn,
              name: '_StorageStoreBase.isLoggedIn'))
          .value;

  late final _$accessTokenAtom =
      Atom(name: '_StorageStoreBase.accessToken', context: context);

  @override
  String? get accessToken {
    _$accessTokenAtom.reportRead();
    return super.accessToken;
  }

  @override
  set accessToken(String? value) {
    _$accessTokenAtom.reportWrite(value, super.accessToken, () {
      super.accessToken = value;
    });
  }

  late final _$refreshTokenAtom =
      Atom(name: '_StorageStoreBase.refreshToken', context: context);

  @override
  String? get refreshToken {
    _$refreshTokenAtom.reportRead();
    return super.refreshToken;
  }

  @override
  set refreshToken(String? value) {
    _$refreshTokenAtom.reportWrite(value, super.refreshToken, () {
      super.refreshToken = value;
    });
  }

  late final _$_StorageStoreBaseActionController =
      ActionController(name: '_StorageStoreBase', context: context);

  @override
  void setTokens(String? accessToken, String? refreshToken) {
    final _$actionInfo = _$_StorageStoreBaseActionController.startAction(
        name: '_StorageStoreBase.setTokens');
    try {
      return super.setTokens(accessToken, refreshToken);
    } finally {
      _$_StorageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearTokens() {
    final _$actionInfo = _$_StorageStoreBaseActionController.startAction(
        name: '_StorageStoreBase.clearTokens');
    try {
      return super.clearTokens();
    } finally {
      _$_StorageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
accessToken: ${accessToken},
refreshToken: ${refreshToken},
isLoggedIn: ${isLoggedIn}
    ''';
  }
}
