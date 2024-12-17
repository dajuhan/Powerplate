import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_goals_widget.dart' show UpdateGoalsWidget;
import 'package:flutter/material.dart';

class UpdateGoalsModel extends FlutterFlowModel<UpdateGoalsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ProteinTextbox widget.
  FocusNode? proteinTextboxFocusNode;
  TextEditingController? proteinTextboxTextController;
  String? Function(BuildContext, String?)?
      proteinTextboxTextControllerValidator;
  // State field(s) for carbTextbox widget.
  FocusNode? carbTextboxFocusNode;
  TextEditingController? carbTextboxTextController;
  String? Function(BuildContext, String?)? carbTextboxTextControllerValidator;
  // State field(s) for fatTextbox widget.
  FocusNode? fatTextboxFocusNode;
  TextEditingController? fatTextboxTextController;
  String? Function(BuildContext, String?)? fatTextboxTextControllerValidator;
  // State field(s) for calorieTextbox widget.
  FocusNode? calorieTextboxFocusNode;
  TextEditingController? calorieTextboxTextController;
  String? Function(BuildContext, String?)?
      calorieTextboxTextControllerValidator;
  // State field(s) for preferred_measurement_choice widget.
  String? preferredMeasurementChoiceValue;
  FormFieldController<String>? preferredMeasurementChoiceValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    proteinTextboxFocusNode?.dispose();
    proteinTextboxTextController?.dispose();

    carbTextboxFocusNode?.dispose();
    carbTextboxTextController?.dispose();

    fatTextboxFocusNode?.dispose();
    fatTextboxTextController?.dispose();

    calorieTextboxFocusNode?.dispose();
    calorieTextboxTextController?.dispose();
  }
}
