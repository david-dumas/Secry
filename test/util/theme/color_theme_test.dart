//unit test for dark/light theme
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:secry/presentation/pages/account/account_go_to_login_or_signup_page.dart';
import 'package:theme_provider/theme_provider.dart';

void main() {
  testWidgets("Test that the app renders properly in dark theme", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: AccountGoToLoginOrSignUpPage(),
    ));

    // Capture a BuildContext object
    final BuildContext context = tester.element(find.byType(MaterialApp));

    // Get finders and relevant objects that would be available at first load of MaterialApp()
    // find login button brightness
    final Finder loginButtonFinder = find.text("Welcome to the app");
    final Text loginButton = tester.firstWidget(loginButtonFinder);

    // functions
    bool testIsInLightTheme() {
      /// return true if the test is in light theme, else false
      if (Theme.of(context).brightness == Brightness.light) {
        return true;
      }
      return false;
    }

    // Here is just a test to confirm that the MaterialApp is now in dark theme
    expect(
      Theme.of(tester.element(find.byWidget(loginButton))).brightness,
      equals(Brightness.dark),
      reason:
          "Since MaterialApp() was set to dark theme when it was built at tester.pumpWidget(), the MaterialApp should be in dark theme",
    );

    // Now let's test the color of the text
    expect(
      loginButton.style!.color,
      testIsInLightTheme() ? Colors.green : Colors.green.shade900,
      reason: "When MaterialApp is in light theme, text is black. When Material App is in dark theme, text is white",
    );
  });
}
