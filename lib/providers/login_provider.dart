import 'package:flutter/material.dart';

import '../blocs/form_bloc.dart';

class LoginProvider extends InheritedWidget {
  final bloc = new FormBloc();

  LoginProvider({required Key key, required Widget child}) : super(key: key, child: child);

  // constructor, forward to Parent InheritedWidget

  @override
  bool updateShouldNotify(InheritedWidget _) {
    // Todo implantation
    return true;
  }

  static FormBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<LoginProvider>() as LoginProvider).bloc;
  }
}
