import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:himalayan_delights/bloc/auth/auth_event.dart';
import 'package:himalayan_delights/bloc/auth/auth_state.dart';
import '../../repositories/auth_repository.dart';
import '../../utils/enums.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;

  AuthBloc(this.authRepo) : super(AuthInitial()) {
    on<AuthSignInRequested>(_signIn);
    on<AuthSignOutRequested>(_signOut);
  }

  Future<void> _signIn(
      AuthSignInRequested event, Emitter<AuthState> emit) async {
    emit(AuthInProgress());

    try {
      User? user;

      if (event.authprovider == SocialLoginType.google) {
        user = await authRepo.signInWithGoogle();
      } else if (event.authprovider == SocialLoginType.facebook) {
        user = await authRepo.signInWithFacebook();
      }

      if (user == null) {
        emit(AuthFailure('User is Empty'));
      } else {
        emit(AuthSuccess(user));
      }
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future<void> _signOut(
      AuthSignOutRequested event, Emitter<AuthState> emit) async {
    emit(AuthInProgress());

    if (event.authprovider == SocialLoginType.google) {
      await authRepo.signOutWithGoogle();
    } else if (event.authprovider == SocialLoginType.facebook) {
      await authRepo.signOutWithFacebook();
    }

    emit(AuthInitial());
  }
}
