import '/components/menu_widget.dart';
import '/components/tasks_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'to_do_list_widget.dart' show ToDoListWidget;
import 'package:flutter/material.dart';

class ToDoListModel extends FlutterFlowModel<ToDoListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Tasks component.
  late TasksModel tasksModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    tasksModel = createModel(context, () => TasksModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    tasksModel.dispose();
  }
}
