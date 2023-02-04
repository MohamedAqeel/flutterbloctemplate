part of 'internet_bloc.dart';

abstract class InternetBlocState extends Equatable {
  const InternetBlocState();
  
  @override
  List<Object> get props => [];
}

class InternetBlocInitial extends InternetBlocState {}
class InternetConnected extends InternetBlocState {}
class InternetDisconnected extends InternetBlocState {}


