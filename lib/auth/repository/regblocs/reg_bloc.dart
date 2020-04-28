import 'dart:async';

import 'package:appnote/auth/repository/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

part 'reg_event.dart';
part 'reg_state.dart';

class RegBloc extends Bloc<RegEvent, RegState> {
  UserRepository userRepository;
  RegBloc() {
    this.userRepository = new UserRepository();
  }
  @override
  RegState get initialState => RegInitial();

  @override
  Stream<RegState> mapEventToState(
    RegEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is SignUpButtonPressedEvent) {
      try{
              yield RegLoadding();
      var user =await userRepository.createUser(event.email, event.password);
      yield RegSuccessful(user: user);
      
      }catch(e){
        yield RegFailure(message: e.toString());
      }
    }
  }
}
