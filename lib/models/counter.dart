
import 'package:flutter/material.dart';
import '/services/local_storage_service.dart';

class Counter extends ChangeNotifier {
  int count = store.get("count") ?? 0;

  increaseCount() {
    count++;
    store.set("count", count);
    notifyListeners();
  }
}