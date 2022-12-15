import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
        title: const Text('Verify email '),
      ),
      body: Column(
        children: [
          const Text('Please verify your email address:'),
          TextButton(
              onPressed: () async {
                final user = FirebaseAuth.instance.currentUser;
                await user?.sendEmailVerification();
              },
              child: const Text('Send email verification')),
        ],
      ),
    );
  }
}
