// get the acces_token and refresh_token from hive
// if acces_token and refresh_token is not null navigate to home screen
// else navigate to login screen with mobx
import 'package:mobx/mobx.dart';

part 'storage_store.g.dart';

class StorageStore = _StorageStoreBase with _$StorageStore;

abstract class _StorageStoreBase with Store {
  @observable
  String? accessToken;

  @observable
  String? refreshToken;

  @action
  void setTokens(String? accessToken, String? refreshToken) {
    this.accessToken = accessToken;
    this.refreshToken = refreshToken;
  }

  @action
  void clearTokens() {
    accessToken = null;
    refreshToken = null;
  }

  @computed
  bool get isLoggedIn => accessToken != null && refreshToken != null;
}


