import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'internet_event.dart';
part 'internet_state.dart';

class InternetBloc extends Bloc<InternetBlocEvent, InternetBlocState> {
  InternetBloc() : super(InternetBlocInitial()) {
    on<ListenInternet>(_listenInternetChanges);
    on<InternetChanged>(_internetChanged);
  }

  StreamSubscription<ConnectivityResult>? internetListener;

  void _listenInternetChanges(event, emit) {
    internetListener = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(const InternetChanged(isConnected: true));
      } else {
        add(const InternetChanged(isConnected: false));
      }
    });
  }

  void _internetChanged(InternetChanged event, emit) {
    if (event.isConnected) {
      emit(InternetConnected());
    } else {
      emit(InternetDisconnected());
    }
  }

  @override
  Future<void> close() {
    internetListener!.cancel();
    return super.close();
  }
}
