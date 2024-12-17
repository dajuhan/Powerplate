import '/flutter_flow/flutter_flow_util.dart';
import 'modify_meal_widget.dart' show ModifyMealWidget;
import 'package:flutter/material.dart';

class ModifyMealModel extends FlutterFlowModel<ModifyMealWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for modify_name_field widget.
  FocusNode? modifyNameFieldFocusNode;
  TextEditingController? modifyNameFieldTextController;
  String? Function(BuildContext, String?)?
      modifyNameFieldTextControllerValidator;
  // State field(s) for modify_protein_field widget.
  FocusNode? modifyProteinFieldFocusNode;
  TextEditingController? modifyProteinFieldTextController;
  String? Function(BuildContext, String?)?
      modifyProteinFieldTextControllerValidator;
  // State field(s) for modify_carbs_field widget.
  FocusNode? modifyCarbsFieldFocusNode;
  TextEditingController? modifyCarbsFieldTextController;
  String? Function(BuildContext, String?)?
      modifyCarbsFieldTextControllerValidator;
  // State field(s) for modify_fat_field widget.
  FocusNode? modifyFatFieldFocusNode;
  TextEditingController? modifyFatFieldTextController;
  String? Function(BuildContext, String?)?
      modifyFatFieldTextControllerValidator;
  // State field(s) for modify_calories_field widget.
  FocusNode? modifyCaloriesFieldFocusNode;
  TextEditingController? modifyCaloriesFieldTextController;
  String? Function(BuildContext, String?)?
      modifyCaloriesFieldTextControllerValidator;
  // State field(s) for modify_notes_field widget.
  FocusNode? modifyNotesFieldFocusNode;
  TextEditingController? modifyNotesFieldTextController;
  String? Function(BuildContext, String?)?
      modifyNotesFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    modifyNameFieldFocusNode?.dispose();
    modifyNameFieldTextController?.dispose();

    modifyProteinFieldFocusNode?.dispose();
    modifyProteinFieldTextController?.dispose();

    modifyCarbsFieldFocusNode?.dispose();
    modifyCarbsFieldTextController?.dispose();

    modifyFatFieldFocusNode?.dispose();
    modifyFatFieldTextController?.dispose();

    modifyCaloriesFieldFocusNode?.dispose();
    modifyCaloriesFieldTextController?.dispose();

    modifyNotesFieldFocusNode?.dispose();
    modifyNotesFieldTextController?.dispose();
  }
}
