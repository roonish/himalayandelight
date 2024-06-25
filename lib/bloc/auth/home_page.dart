import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authentication_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<AuthenticationService>().signOut();
          },
          child: Text('Sign Out'),
        ),
      ),
    );
  }
}
