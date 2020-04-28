part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitialState extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthenticatedState extends AuthState {
  FirebaseUser user;

  AuthenticatedState({@required this.user});
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class UnAuthenticatedState extends AuthState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}
