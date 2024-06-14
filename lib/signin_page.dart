import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import 'auth_repository.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Sign-In with BLoC'),
      ),
      body: BlocProvider(
        create: (context) => AuthBloc(AuthRepository()),
        child: SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Signed in as ${state.user.displayName}'),
          ));
        } else if (state is AuthFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Sign in failed: ${state.error}'),
          ));
        }
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is AuthInProgress) {
                  return CircularProgressIndicator();
                } else if (state is AuthSuccess) {
                  return Column(
                    children: [
                      Text('Signed in as: ${state.user.displayName}'),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AuthBloc>(context).add(AuthSignOutRequested());
                        },
                        child: Text('Sign Out'),
                      ),
                    ],
                  );
                } else {
                  return ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<AuthBloc>(context).add(AuthSignInRequested());
                    },
                    child: Text('Sign In with Google'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
