import 'package:bloc/bloc.dart';
import 'package:himalayan_delights/bloc/auth/auth_event.dart';
import 'package:himalayan_delights/bloc/auth/auth_state.dart';
import '../../repositories/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;

  AuthBloc(this.authRepo) : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AuthSignInRequested) {
      yield AuthInProgress();
      try {
        final user = await authRepo.signInWithGoogle();
        yield AuthSuccess(user!);
      } catch (e) {
        yield AuthFailure(e.toString());
      }
    } else if (event is AuthSignOutRequested) {
      await authRepo.signOut();
      yield AuthInitial();
    }
  }
}
