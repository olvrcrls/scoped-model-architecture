import 'package:flutter/material.dart';
import 'package:scoped_model_architecture/scoped_models/success_model.dart';
import "package:scoped_model_architecture/ui/views/base_view.dart";

class SuccessView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SuccessModel> (
      builder: (context, child, model) => Scaffold(
        body: Center(
          child: Text(this.runtimeType.toString())
          )
        )
    );
  }
}