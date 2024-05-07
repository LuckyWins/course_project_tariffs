import 'dart:convert';

import 'package:crypto/crypto.dart';

extension StringUtil on String {
  String toSha256() => sha256.convert(utf8.encode(this)).toString();
}
