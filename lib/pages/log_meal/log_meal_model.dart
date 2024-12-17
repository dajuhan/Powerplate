import '/flutter_flow/flutter_flow_util.dart';
import 'log_meal_widget.dart' show LogMealWidget;
import 'package:flutter/material.dart';

class LogMealModel extends FlutterFlowModel<LogMealWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name_field widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldTextController;
  String? Function(BuildContext, String?)? nameFieldTextControllerValidator;
  // State field(s) for protein_field widget.
  FocusNode? proteinFieldFocusNode;
  TextEditingController? proteinFieldTextController;
  String? Function(BuildContext, String?)? proteinFieldTextControllerValidator;
  // State field(s) for carbs_field widget.
  FocusNode? carbsFieldFocusNode;
  TextEditingController? carbsFieldTextController;
  String? Function(BuildContext, String?)? carbsFieldTextControllerValidator;
  // State field(s) for fat_field widget.
  FocusNode? fatFieldFocusNode;
  TextEditingController? fatFieldTextController;
  String? Function(BuildContext, String?)? fatFieldTextControllerValidator;
  // State field(s) for calories_field widget.
  FocusNode? caloriesFieldFocusNode;
  TextEditingController? caloriesFieldTextController;
  String? Function(BuildContext, String?)? caloriesFieldTextControllerValidator;
  // State field(s) for notes_field widget.
  FocusNode? notesFieldFocusNode;
  TextEditingController? notesFieldTextController;
  String? Function(BuildContext, String?)? notesFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFieldFocusNode?.dispose();
    nameFieldTextController?.dispose();

    proteinFieldFocusNode?.dispose();
    proteinFieldTextController?.dispose();

    carbsFieldFocusNode?.dispose();
    carbsFieldTextController?.dispose();

    fatFieldFocusNode?.dispose();
    fatFieldTextController?.dispose();

    caloriesFieldFocusNode?.dispose();
    caloriesFieldTextController?.dispose();

    notesFieldFocusNode?.dispose();
    notesFieldTextController?.dispose();
  }
}
