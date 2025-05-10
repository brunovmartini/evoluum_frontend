import '/components/menu_widget.dart';
import '/components/task_form_widget.dart';
import '/components/tasks_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'to_do_list_create_widget.dart' show ToDoListCreateWidget;
import 'package:flutter/material.dart';

class ToDoListCreateModel extends FlutterFlowModel<ToDoListCreateWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Tasks component.
  late TasksModel tasksModel;
  // Model for TaskForm component.
  late TaskFormModel taskFormModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    tasksModel = createModel(context, () => TasksModel());
    taskFormModel = createModel(context, () => TaskFormModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    tasksModel.dispose();
    taskFormModel.dispose();
  }
}
