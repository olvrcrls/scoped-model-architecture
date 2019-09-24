import 'package:flutter/material.dart';
import 'package:scoped_model_architecture/scoped_models/home_model.dart';
import "package:scoped_model_architecture/ui/base_view.dart";

// Displays the view for HomeModel.
class TemplateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel> (
      builder: (context, child, model) => Scaffold(
        body: Center(
          child: Text(this.runtimeType.toString())
          )
        )
    );
  }
}