import 'dart:html';
import 'components/home/home.dart';
import 'components/login/login.dart';
import 'components/registration/registration.dart';
void main() {
  // querySelector('#output')?.text = 'Your Dart app is running.';
   final output = querySelector('#output');

// Render the initial component
   final homeComponent = HomeComponent();
   homeComponent.initialize();
  output?.children.clear();
  output?.append(homeComponent.element);

  //Render Login
  //  final homeComponent = LoginComponent();
  //  homeComponent.initialize();
  // output?.children.clear();
  // output?.append(homeComponent.element);

  //Render Registration
  //  final homeComponent = RegistrationComponent();
  //  homeComponent.initialize();
  // output?.children.clear();
  // output?.append(homeComponent.element);
}


