import 'package:equatable/equatable.dart';

import '../../utils/enums.dart';

abstract class AuthEvent extends Equatable {
  final SocialLoginType authprovider;

  const AuthEvent({required this.authprovider});
  @override
  List<Object> get props => [authprovider];
}

class AuthSignInRequested extends AuthEvent {
  const AuthSignInRequested({required super.authprovider});
}

class AuthSignOutRequested extends AuthEvent {
  const AuthSignOutRequested({required super.authprovider});
}
