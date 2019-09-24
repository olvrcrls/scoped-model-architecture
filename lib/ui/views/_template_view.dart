import 'package:flutter/material.dart';
import 'package:scoped_model_architecture/scoped_models/home_model.dart';
import 'package:scoped_model_architecture/ui/views/base_view.dart';

// Snippet for Template of a View widget.
class Template extends StatelessWidget {
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