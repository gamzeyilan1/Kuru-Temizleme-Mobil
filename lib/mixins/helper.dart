import 'package:flutter/material.dart';
import '../blocs/form_bloc.dart';

class Helper {
  Widget errorMessage(FormBloc bloc) {
    return StreamBuilder<String>(
      stream: bloc.errorMessage,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data.toString(), style: TextStyle(color: Colors.red));
        }
        return Text('');
      },
    );
  }
}
