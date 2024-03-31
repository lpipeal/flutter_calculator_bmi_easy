import 'package:calculator_bmi_easy/src/shared/shared.dart';

class InputValidatorText implements InputValidator<String?, String?> {
  @override
  String? validations(String? value) {
    final RegExp numericWithDot = RegExp(r'^[0-9]+$|^[0-9]*.[0-9]+$');

    if (value == null || value.isEmpty) {
      return 'Ingrese un valor';
    }

    if (!numericWithDot.hasMatch(value)) {
      return 'Valor invalido';
    }

    return null;
  }
}
