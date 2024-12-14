import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:power_plate/flutter_flow/flutter_flow_drop_down.dart';
import 'package:power_plate/flutter_flow/flutter_flow_icon_button.dart';
import 'package:power_plate/flutter_flow/flutter_flow_widgets.dart';
import 'package:power_plate/flutter_flow/flutter_flow_theme.dart';
import 'package:power_plate/index.dart';
import 'package:power_plate/main.dart';
import 'package:power_plate/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:power_plate/backend/firebase/firebase_config.dart';
import 'package:power_plate/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('US2 User Login', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));

    await tester.pumpAndSettle();
    await tester.enterText(
        find.byKey(ValueKey('Login-email_suq5')), 'matthew_con123@uri.edu');
    await tester.enterText(
        find.byKey(ValueKey('login-password_z8vp')), 'password');
    await tester.tap(find.byKey(ValueKey('Login-Button_e02q')));
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('Protein_v2s1')), findsWidgets);
  });

  testWidgets('US2 User Login Reset Password', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: LoginWidget(),
      ),
    ));

    await tester.tap(find.byKey(ValueKey('Forgot_button_2nqi')));
    expect(find.text('Enter Email To Reset Password'), findsWidgets);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
