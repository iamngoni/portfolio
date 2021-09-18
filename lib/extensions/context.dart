import 'package:flutter/material.dart';

extension ExtraContext on BuildContext {
  /// Height of device screen (y-axis)
  double get height => MediaQuery.of(this).size.height;

  /// Width of device screen (x-axis)
  double get width => MediaQuery.of(this).size.width;

  /// Navigate to new page
  routeTo({required Widget page, bool replace = false}) {
    return replace
        ? Navigator.of(this)
            .pushReplacement(MaterialPageRoute(builder: (context) => page))
        : Navigator.of(this)
            .push(MaterialPageRoute(builder: (context) => page));
  }

  /// Remove current screen from stack
  goBack() {
    return Navigator.of(this).pop();
  }

  /// Show [SnackBar] for notifications
  notification({required String message, bool isError = false}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : Colors.grey,
      ),
    );
  }
}
