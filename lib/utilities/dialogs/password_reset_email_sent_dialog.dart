import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<void> showPasswordResetEmailSentDialog(BuildContext context) {
  return showGenericDialog<void>(
      context: context,
      title: 'Password reset',
      content:
          'We have now sent you a password reset link. Please check your email for more information',
      optionsBuilder: () => {
            'OK': null,
          });
}
