// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:developer';

import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:flutter/material.dart';

import 'multiplatform.dart';

class RequestError {
  final String title;
  final String message;

  const RequestError(this.title, this.message);
}

class RequestUtil {
  // static String get networkError => t.exceptions.network;

  /// get error text.
  /// General used to show error in UI.
  static RequestError getError(BuildContext context, Object? obj) {
    String? title;
    String? message;
    // non-200 error goes here.
    switch (obj.runtimeType) {
      case Failure:
        final failure = obj as Failure;
        message = failure.message;
        break;
      // TODO: localize
      case SignInFailure:
        final failure = obj as SignInFailure;
        message = failure.message;

        break;
      case SignUpFailure:
        final failure = obj as SignUpFailure;
        message = failure.message;

        break;
    }

    title ??= t.general.errorModal.title;
    message ??= t.exceptions.network;
    log(obj.toString());
    return RequestError(title, message);
  }

  static void catchNetworkError({
    required BuildContext context,
    required Object? obj,
    String? buttonText,
  }) {
    final error = getError(context, obj);
    Multiplatform.showMessage(
      context: context,
      title: error.title,
      message: error.message,
      type: DialogType.error,
      buttonText: buttonText,
    );
  }
}
