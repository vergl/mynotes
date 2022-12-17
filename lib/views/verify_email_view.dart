import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/services/auth/auth_service.dart';

class VerifyEmailVew extends StatefulWidget {
  const VerifyEmailVew({super.key});

  @override
  State<VerifyEmailVew> createState() => _VerifyEmailVewState();
}

class _VerifyEmailVewState extends State<VerifyEmailVew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify email'),
      ),
      body: Column(
        children: [
          const Text(
            "We've sent an email verification. Please open it to verify your account.",
          ),
          const Text(
            "If you haven't received a verification email yet, press the button below",
          ),
          TextButton(
            onPressed: () async {
              await AuthService.firebase().sendEmailVerification();
            },
            child: const Text('Send email verification'),
          ),
          TextButton(
            onPressed: () {
              AuthService.firebase().logOut();
              if (mounted) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  registerRoute,
                  (route) => false,
                );
              }
            },
            child: const Text('Restart'),
          ),
        ],
      ),
    );
  }
}
