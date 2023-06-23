extension StringExtensions on String {
  bool get isValidEmail => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(this);
  bool get isValidName => RegExp(r'[a-bA-Z]').hasMatch(this);

  bool get isValidPassword => RegExp(r'[a-zA-Z1-9]{8}').hasMatch(this);

  bool get isValidPhone => RegExp(r'\+92[0-9]{10}').hasMatch(this);

  bool get isValidCnic => RegExp(r'[0-9]{5}-[0-9]{7}-[0-9]{1}').hasMatch(this);
}
