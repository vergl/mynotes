import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/extensions/buildcontext/loc.dart';
import 'package:mynotes/services/auth/bloc/auth_bloc.dart';
import 'package:mynotes/services/auth/bloc/auth_event.dart';

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
        title: Text(context.loc.verify_email),
      ),
      body: Column(
        children: [
          Text(context.loc.verify_email_view_prompt),
          TextButton(
            onPressed: () {
              context.read<AuthBloc>().add(
                    const AuthEventSendEmailVerification(),
                  );
            },
            child: Text(context.loc.verify_email_send_email_verification),
          ),
          TextButton(
            onPressed: () {
              context.read<AuthBloc>().add(
                    const AuthEventLogOut(),
                  );
            },
            child: Text(context.loc.restart),
          ),
        ],
      ),
    );
  }
}
