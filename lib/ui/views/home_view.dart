import 'package:flutter/material.dart';
import 'package:scoped_model_architecture/enums/view_states.dart';
import 'package:scoped_model_architecture/scoped_models/home_model.dart';
import "package:scoped_model_architecture/ui/views/base_view.dart";
import 'package:scoped_model_architecture/ui/views/success_view.dart';
import 'package:scoped_model_architecture/ui/views/error_view.dart';
import 'package:scoped_model_architecture/ui/widgets/busy_overlay.dart';

// Displays the view for HomeModel.
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel> (
      builder: (context, child, model) => BusyOverlay(
        show: model.state == ViewState.Busy,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () async {
            var result = await model.saveData();
            if (result) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessView()));
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorView()));
            }
          }),
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