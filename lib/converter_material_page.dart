import 'package:flutter/material.dart';

class ConverterMaterialPage extends StatefulWidget {
  const ConverterMaterialPage({super.key});

  @override
  State<ConverterMaterialPage> createState() => _ConverterMaterialPageState();
}

class _ConverterMaterialPageState extends State<ConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,   
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            "Currency Converter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                result.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextField(
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "Enter the amount in USD",
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 16),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
              const SizedBox(height: 15 ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                  result = double.parse(textEditingController.text)*87.23;
                  });
                },
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(10),
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(5)),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                child: Text(
                  "Click Me",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
