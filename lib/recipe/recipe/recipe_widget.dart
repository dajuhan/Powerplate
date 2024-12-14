import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'recipe_model.dart';
export 'recipe_model.dart';

class RecipeWidget extends StatefulWidget {
  const RecipeWidget({
    super.key,
    this.recipe,
    String? recipeName,
  }) : recipeName = recipeName ?? 'recipeName';

  final DocumentReference? recipe;
  final String recipeName;

  @override
  State<RecipeWidget> createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  late RecipeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecipeModel());

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
      height: 120.0,
      decoration: BoxDecoration(
        color: const Color(0xFFB8B8FF),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: const Color(0xFF8377D1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: Container(
                  width: 275.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.recipeName,
                        'recipeName',
                      ),
                      maxLines: 40,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 10.0),
                child: StreamBuilder<RecipeRecord>(
                  stream: RecipeRecord.getDocument(widget.recipe!),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }

                    final toggleIconRecipeRecord = snapshot.data!;

                    return ToggleIcon(
                      onPressed: () async {
                        await toggleIconRecipeRecord.reference.update({
                          ...mapToFirestore(
                            {
                              'favorited': !toggleIconRecipeRecord.favorited,
                            },
                          ),
                        });
                        logFirebaseEvent(
                            'RECIPE_ToggleIcon_8t8tsx69_ON_TOGGLE');
                        logFirebaseEvent('ToggleIcon_backend_call');

                        await widget.recipe!.update(createRecipeRecordData(
                          favorited: !toggleIconRecipeRecord.favorited,
                        ));
                      },
                      value: toggleIconRecipeRecord.favorited,
                      onIcon: const Icon(
                        Icons.star,
                        color: Color(0xFFFBB13C),
                        size: 40.0,
                      ),
                      offIcon: const Icon(
                        Icons.star_border,
                        size: 40.0,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
