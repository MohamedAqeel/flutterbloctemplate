part of 'internet_bloc.dart';

abstract class InternetBlocEvent extends Equatable {
  const InternetBlocEvent();

  @override
  List<Object> get props => [];
}

class ListenInternet extends InternetBlocEvent {}

class InternetChanged extends InternetBlocEvent {
  final bool isConnected;
  const InternetChanged({this.isConnected = false});
}
