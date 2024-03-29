import 'package:flutter/material.dart';
import 'package:scoped_model_architecture/scoped_models/error_model.dart';
import "package:scoped_model_architecture/ui/views/base_view.dart";


class ErrorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ErrorModel> (
      builder: (context, child, model) => Scaffold(
        body: Center(
          child: Text(this.runtimeType.toString())
          )
        )
    );
  }
}