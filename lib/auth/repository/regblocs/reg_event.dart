part of 'reg_bloc.dart';

abstract class RegEvent extends Equatable {
  const RegEvent();
}

class SignUpButtonPressedEvent extends RegEvent {
  String email, password;
  SignUpButtonPressedEvent({@required this.email, @required this.password});
  @override
  // TODO: implement props
  List<Object> get props => null;
}
