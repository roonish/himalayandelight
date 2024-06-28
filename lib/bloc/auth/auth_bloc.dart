import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import 'auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AuthSignInRequested) {
      yield AuthInProgress();
      try {
        final user = await _authRepository.signInWithGoogle();
        yield AuthSuccess(user!);
      } catch (e) {
        yield AuthFailure(e.toString());
      }
    } else if (event is AuthSignOutRequested) {
      await _authRepository.signOut();
      yield AuthInitial();
    }
  }
}
