import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'goal_setting_model.dart';
export 'goal_setting_model.dart';

class GoalSettingWidget extends StatefulWidget {
  const GoalSettingWidget({super.key});

  @override
  State<GoalSettingWidget> createState() => _GoalSettingWidgetState();
}

class _GoalSettingWidgetState extends State<GoalSettingWidget> {
  late GoalSettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoalSettingModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'GoalSetting'});
    _model.proteinTextboxTextController ??= TextEditingController();
    _model.proteinTextboxFocusNode ??= FocusNode();

    _model.carbTextboxTextController ??= TextEditingController();
    _model.carbTextboxFocusNode ??= FocusNode();

    _model.fatTextboxTextController ??= TextEditingController();
    _model.fatTextboxFocusNode ??= FocusNode();

    _model.calorieTextboxTextController ??= TextEditingController();
    _model.calorieTextboxFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF5F5F5),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 500.0,
              ),
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Screenshot_2024-10-21_at_6.17.08_PM.png',
                            width: 318.0,
                            height: 54.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Set Your Goals!',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                      fontFamily: 'Inter Tight',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      shadows: [
                                        const Shadow(
                                          color: Color(0xFF8EF9F3),
                                          offset: Offset(2.0, 2.0),
                                          blurRadius: 2.0,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Screenshot_2024-10-21_at_6.50.47_PM.png',
                                  width: 347.0,
                                  height: 46.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: TextFormField(
                                  controller:
                                      _model.proteinTextboxTextController,
                                  focusNode: _model.proteinTextboxFocusNode,
                                  autofocus: false,
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  textInputAction: TextInputAction.next,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Protein...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF8377D1),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 26.0, 24.0, 26.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  keyboardType: TextInputType.number,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .proteinTextboxTextControllerValidator
                                      .asValidator(context),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp('[0-9]'))
                                  ],
                                ),
                              ),
                            ].divide(const SizedBox(height: 20.0)),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.carbTextboxTextController,
                            focusNode: _model.carbTextboxFocusNode,
                            autofocus: false,
                            textCapitalization: TextCapitalization.characters,
                            textInputAction: TextInputAction.next,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Carbohydrates...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF8377D1),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 26.0, 24.0, 26.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            keyboardType: TextInputType.number,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.carbTextboxTextControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(height: 20.0)),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.fatTextboxTextController,
                        focusNode: _model.fatTextboxFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.characters,
                        textInputAction: TextInputAction.done,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Fat...',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF8377D1),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 26.0, 24.0, 26.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.fatTextboxTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.calorieTextboxTextController,
                        focusNode: _model.calorieTextboxFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.characters,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Calories... ',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF8377D1),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 26.0, 24.0, 26.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.calorieTextboxTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'GOAL_SETTING_COMPLETE_PROFILE_BTN_ON_TAP');
                          logFirebaseEvent('Button_backend_call');

                          await GoalsRecord.collection
                              .doc()
                              .set(createGoalsRecordData(
                                protein: int.tryParse(
                                    _model.proteinTextboxTextController.text),
                                carbohydrates: int.tryParse(
                                    _model.carbTextboxTextController.text),
                                fats: int.tryParse(
                                    _model.fatTextboxTextController.text),
                                user: currentUserReference,
                                calories: int.tryParse(
                                    _model.calorieTextboxTextController.text),
                              ));
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('HomePage');
                        },
                        text: 'Complete Profile',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF8377D1),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            color: Colors.white,
                            letterSpacing: 0.0,
                            shadows: [
                              Shadow(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                offset: const Offset(2.0, 2.0),
                                blurRadius: 3.0,
                              )
                            ],
                          ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Color(0xFF8EF9F3),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 20.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
