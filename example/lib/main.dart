import 'package:flutter/material.dart';
import 'package:super_form_example/sign_up/sign_up.dart';
import 'package:super_form_example/survey/survey.dart';

import 'burritox/burritox.dart';

void main() {
  runApp(ExamplesApp());
}

/// Entrypoint for our beautiful examples.
///
/// Visit https://superform.dev for preview.
class ExamplesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: "example_app",
      title: 'Super Form Demo',
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case "sign_up":
            return MaterialPageRoute(builder: (_) => const SignUpPage());
          case "burritox":
            return MaterialPageRoute(
              builder: (_) => Theme(
                data: ThemeData(primarySwatch: Colors.deepOrange),
                child: const Burritox(),
              ),
            );
          case "survey":
            return MaterialPageRoute(
              builder: (_) => Theme(
                data: ThemeData(primarySwatch: Colors.blueGrey),
                child: const SurveyPage(),
              ),
            );
        }
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "SuperForm examples library 📕",
          ),
        ),
        body: Builder(
          builder: (context) => ListView(
            children: [
              ListTile(
                title: const Text("Sign Up"),
                subtitle:
                    const Text("Classic sign up form with gradual validation"),
                onTap: () {
                  Navigator.of(context).restorablePushNamed("sign_up");
                },
              ),
              ListTile(
                title: const Text("Survey"),
                subtitle: const Text(
                    "Satisfaction survey with sliders and dynamic email field"),
                onTap: () {
                  Navigator.of(context).restorablePushNamed("survey");
                },
              ),
              ListTile(
                title: const Text("Burritox"),
                subtitle: const Text(
                    "Takeaway order with checkboxes, dynamic rules and editing"),
                onTap: () {
                  Navigator.of(context).restorablePushNamed("burritox");
                },
              ),
              ListTile(
                title: const Text("Restorable form"),
                subtitle:
                    const Text("Super Forms can be restorable, test it here!"),
                onTap: () {
                  Navigator.of(context).restorablePushNamed("restorable");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
