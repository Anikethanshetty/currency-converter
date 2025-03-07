
import 'package:demo/converter_material_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyCupertinoApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
      return const  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:ConverterMaterialPage()
      );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
