// check the token if it is null or not and return true or false
import 'package:fitness/constants/text.dart';
import 'package:hive/hive.dart';

import '../../stores/storage_store.dart';

Future<bool> checkLogin() async {
  final storageStore = StorageStore();
  //hive open box
  var box = await Hive.openBox(
    'tokens',
  );

  if (box.get(accessToken) != null && box.get(refreshToken) != null) {
    storageStore.setTokens(
      box.get(accessToken),
      box.get(refreshToken),
    );
    return true;
  } else {
    return false;
  }
}
