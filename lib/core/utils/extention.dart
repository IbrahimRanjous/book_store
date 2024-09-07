import 'package:flutter/material.dart';

extension CommonExtension on State {
  void ebdEditing() {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
