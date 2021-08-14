import 'package:localstorage/localstorage.dart';

// Export the object of Store
Store store = Store();

class Store {
  final LocalStorage store = new LocalStorage("momani");

  Store();

  init() async {
    await store.ready;
    print('From LS Service: ${store.getItem("isDark")}');
  }

  dynamic get(key) {
    return store.getItem(key);
  }

  Future set(key, value) async {
    await store.setItem(key, value);
  }

  void delete(key) {
    store.deleteItem(key);
  }
}
