import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recipe_gen_widget.dart' show RecipeGenWidget;
import 'package:flutter/material.dart';

class RecipeGenModel extends FlutterFlowModel<RecipeGenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ProteinValue widget.
  FocusNode? proteinValueFocusNode;
  TextEditingController? proteinValueTextController;
  String? Function(BuildContext, String?)? proteinValueTextControllerValidator;
  // State field(s) for CarbsValue widget.
  FocusNode? carbsValueFocusNode;
  TextEditingController? carbsValueTextController;
  String? Function(BuildContext, String?)? carbsValueTextControllerValidator;
  // State field(s) for FatsValue widget.
  FocusNode? fatsValueFocusNode;
  TextEditingController? fatsValueTextController;
  String? Function(BuildContext, String?)? fatsValueTextControllerValidator;
  // State field(s) for CaloriesValue widget.
  FocusNode? caloriesValueFocusNode;
  TextEditingController? caloriesValueTextController;
  String? Function(BuildContext, String?)? caloriesValueTextControllerValidator;
  // State field(s) for keywordValue widget.
  FocusNode? keywordValueFocusNode;
  TextEditingController? keywordValueTextController;
  String? Function(BuildContext, String?)? keywordValueTextControllerValidator;
  // Stores action output result for [Backend Call - API (getRecipe)] action in Button widget.
  ApiCallResponse? recipeGenerated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    proteinValueFocusNode?.dispose();
    proteinValueTextController?.dispose();

    carbsValueFocusNode?.dispose();
    carbsValueTextController?.dispose();

    fatsValueFocusNode?.dispose();
    fatsValueTextController?.dispose();

    caloriesValueFocusNode?.dispose();
    caloriesValueTextController?.dispose();

    keywordValueFocusNode?.dispose();
    keywordValueTextController?.dispose();
  }
}
