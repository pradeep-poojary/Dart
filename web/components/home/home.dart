import 'dart:html';

class HomeComponent {
  final Element element;

  HomeComponent() : element = Element.tag('div');

  void initialize() {
    HttpRequest.request('components/home/home.html').then((response) {
      element.innerHtml = response.responseText;
      attachButtonListeners();
    });
  }

   void attachButtonListeners() {
    final loginButton = element.querySelector('#login-button');
    final registrationButton = element.querySelector('#registration-button');

    loginButton?.onClick.listen((event) {
      // Navigate to login page 
       window.location.href = 'components/login/login.html';
   
    });

    registrationButton?.onClick.listen((event) {
      // navigate to registration
      window.location.href = 'components/registration/registration.html';
    });
  }

}