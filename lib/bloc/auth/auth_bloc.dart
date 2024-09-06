import 'package:bloc/bloc.dart';
import 'package:himalayan_delights/bloc/auth/auth_event.dart';
import 'package:himalayan_delights/bloc/auth/auth_state.dart';
import '../../repositories/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;

  AuthBloc(this.authRepo) : super(AuthInitial()) {
    on<AuthEvent>(_signInWithGoogle);
  }

  @override
  Future<void> _signInWithGoogle(
      AuthEvent event, Emitter<AuthState> emit) async {
    if (event is AuthSignInRequested) {
      emit(AuthInProgress());
      try {
        final user = await authRepo.signInWithGoogle();
        user == null
            ? emit(AuthFailure('User is Empty'))
            : emit(AuthSuccess(user!));
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    }
    //  else if (event is AuthSignOutRequested) {
    //   await authRepo.signOut();
    //   emit( AuthInitial());
    // }
  }
}
