// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/services.dart';

class AppActions {
  static Future<void> hideKeyboard() =>
      SystemChannels.textInput.invokeMethod<void>('TextInput.hide');
}
