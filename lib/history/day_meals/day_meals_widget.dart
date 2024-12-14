import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'day_meals_model.dart';
export 'day_meals_model.dart';

class DayMealsWidget extends StatefulWidget {
  const DayMealsWidget({
    super.key,
    required this.mealName,
    required this.mealDoc,
  });

  final String? mealName;
  final DocumentReference? mealDoc;

  @override
  State<DayMealsWidget> createState() => _DayMealsWidgetState();
}

class _DayMealsWidgetState extends State<DayMealsWidget> {
  late DayMealsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayMealsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 71.0,
      decoration: BoxDecoration(
        color: const Color(0xFFB8B8FF),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: const Color(0xFF8377D1),
        ),
      ),
      child: Align(
        alignment: const AlignmentDirectional(-1.0, 0.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget.mealName,
              'mealName',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
