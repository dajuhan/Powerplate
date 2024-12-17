import '/flutter_flow/flutter_flow_util.dart';
import 'recipe_storage_widget.dart' show RecipeStorageWidget;
import 'package:flutter/material.dart';

class RecipeStorageModel extends FlutterFlowModel<RecipeStorageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
