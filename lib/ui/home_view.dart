import 'package:flutter/material.dart';
import 'package:scoped_model_architecture/enums/view_states.dart';
import 'package:scoped_model_architecture/scoped_models/home_model.dart';
import "package:scoped_model_architecture/ui/base_view.dart";

// Displays the view for HomeModel.
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel> (
      builder: (context, child, model) => Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () => model.saveData()),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _getBodyUi(model.state),
              Text(model.title)
            ],
          )
          )
        )
      );
  }

  Widget _getBodyUi(ViewState state) {
    switch (state) {
      case ViewState.Busy:
        return CircularProgressIndicator();
      
      case ViewState.Retrieved:
      default:
        return Text("Done");
    }
  }
}