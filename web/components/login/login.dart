import 'dart:html';

class LoginComponent {
  final Element element;

  LoginComponent() : element = Element.tag('div');

  void initialize() {
    HttpRequest.request('components/login/login.html').then((response) {
      element.innerHtml = response.responseText;
      attachFormSubmitListener();
    });
  }

  void attachFormSubmitListener() {
    final form = element.querySelector('#login-form') as FormElement;

    form.onSubmit.listen((event) {
      event.preventDefault();

      final emailInput = form.querySelector('#email-input') as InputElement;
      final passwordInput = form.querySelector('#password-input') as InputElement;

    //   final email = emailInput.value.trim();
    //   final password = passwordInput.value.trim();

     
    });
  }

 
}