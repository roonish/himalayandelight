import 'package:flutter/material.dart';

import '../../widgets/label_text.dart';

class ErrorScreen extends StatelessWidget {
  final String errorText;
  const ErrorScreen({super.key, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LabelText(text: errorText),
      ),
    );
  }
}
