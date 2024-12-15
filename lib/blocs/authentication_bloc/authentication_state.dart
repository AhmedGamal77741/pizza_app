part of 'authentication_bloc.dart';

enum AuthenticationStatus {authenticated, unauthenticated, unKnown }

 class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status= AuthenticationStatus.unKnown,
    this.user
  });
  
  final AuthenticationStatus status;
  final MyUser? user ;

 const AuthenticationState.unKnown(): this._();

 const AuthenticationState.authenticated(MyUser user) 
 : this._(status: AuthenticationStatus.authenticated,user: user);

 const AuthenticationState.unauthenticated() 
 : this._(status: AuthenticationStatus.unauthenticated);


  @override
  List<Object?> get props => [status,user];
}
