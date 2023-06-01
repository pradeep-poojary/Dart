import 'dart:html';

class RegistrationComponent {
  final Element element;

  RegistrationComponent() : element = Element.tag('div');

  void initialize() {
    HttpRequest.request('components/registration/registration.html').then((response) {
      element.innerHtml = response.responseText;
    //   attachFormSubmitListener();
    });
  }

//   void attachFormSubmitListener() {
//     final form = element.querySelector('#registration-form') as FormElement;

//     form.onSubmit.listen((event) {
//       event.preventDefault();

//       final nameInput = form.querySelector('#name-input') as InputElement;
//       final emailInput = form.querySelector('#email-input') as InputElement;
//       final passwordInput = form.querySelector('#password-input') as InputElement;

//     //   final name = nameInput.value.trim();
//     //   final email = emailInput.value.trim();
//     //   final password = passwordInput.value.trim();

//     });
//   }


}