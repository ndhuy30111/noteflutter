part of 'reg_bloc.dart';

abstract class RegState extends Equatable {
  const RegState();
}

class RegInitial extends RegState {
  @override
  List<Object> get props => [];
}

class RegLoadding extends RegState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class RegSuccessful extends RegState {
  FirebaseUser user;

  RegSuccessful({@required this.user});

  @override
  // TODO: implement props
  List<Object> get props => null;
}

class RegFailure extends RegState {
  String message;

  RegFailure({@required this.message});

  @override
  // TODO: implement props
  List<Object> get props => null;
}
