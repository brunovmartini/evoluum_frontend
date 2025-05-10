import '/components/login_form_widget.dart';
import '/components/to_do_list_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ToDoListImage component.
  late ToDoListImageModel toDoListImageModel;
  // Model for LoginForm component.
  late LoginFormModel loginFormModel;

  @override
  void initState(BuildContext context) {
    toDoListImageModel = createModel(context, () => ToDoListImageModel());
    loginFormModel = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    toDoListImageModel.dispose();
    loginFormModel.dispose();
  }
}
