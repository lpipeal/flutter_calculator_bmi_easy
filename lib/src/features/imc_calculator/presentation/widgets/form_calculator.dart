import 'package:flutter/material.dart';
import 'package:calculator_bmi_easy/src/features/imc_calculator/presentation/widgets/input_validator_text.dart';
import '/src/shared/shared.dart';

class FormCalculatorImc extends StatefulWidget {
  const FormCalculatorImc({super.key});

  @override
  State<FormCalculatorImc> createState() => _FormCalculatorImcState();
}

class _FormCalculatorImcState extends State<FormCalculatorImc> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    heightController.dispose();
    weightController.dispose();
    super.dispose();
  }

  void clearTextField() {
    _formKey.currentState?.reset();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomInput(
              controller: weightController,
              autoFocus: true,
              decoration: const InputDecoration(
                  labelText: 'Peso',
                  hintText: 'Digite su peso en Kilogramos',
                  icon: Icon(Icons.numbers_outlined),
                  border: OutlineInputBorder(),
                  fillColor: Colors.amber),
              textInputType: TextInputType.number,
              // lisTextInputFormatter: [FilteringTextInputFormatter.digitsOnly],
              validator: (String? value) =>
                  InputValidatorText().validations(value),
              onPressed: () {},
              onChanged: (value) {},
              onFieldSubmitted: (value) => FocusScope.of(context).nextFocus(),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomInput(
              controller: heightController,
              decoration: const InputDecoration(
                  labelText: 'Altura',
                  hintText: 'Digite su altura en metros',
                  icon: Icon(Icons.numbers_outlined),
                  border: OutlineInputBorder()),
              textInputType: TextInputType.number,
              // lisTextInputFormatter: [FilteringTextInputFormatter.digitsOnly],
              validator: (String? value) =>
                  InputValidatorText().validations(value),
              onPressed: () {},
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSubmitButton(
                    key: const Key('resetButton'),
                    buttonStyle: const ButtonStyle(),
                    onPressed: () {
                      clearTextField();
                    },
                    contentButton: const Text('Limpiar')),
                const SizedBox(
                  width: 20,
                ),
                CustomSubmitButton(
                    key: const Key('submitButton'),
                    buttonStyle: const ButtonStyle(),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        var weight = double.parse(weightController.text);
                        var height = heightController.text.contains('.')
                            ? double.parse(heightController.text)
                            : double.parse(heightController.text) / 100;
                        var result = (weight / (height * height)).truncate();

                        switch (result) {
                          case < 18.5:
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Su IMC es $result y su rango de peso es: insuficiente')),
                            );
                            break;
                          case >= 18.5 && <= 24.9:
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Su IMC es $result y su rango de peso es: normal ó saludable')),
                            );
                            break;
                          case >= 25.0 && <= 29.9:
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Su IMC es $result y su rango de peso es: sobrepeso')),
                            );
                            break;
                          case >= 30:
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Su IMC es $result y su rango de peso es: Obesidad')),
                            );
                            break;
                          default:
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      'No se encuentra en un rango posible')),
                            );
                        }
                      }
                    },
                    contentButton: const Text('Calcular'))
              ],
            )
          ],
        ));
  }
}
