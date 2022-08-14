import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:text_field/text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = 'Homme';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const HrCustomTextFormField(
              textInputType: TextInputType.text,
              labelText: 'Nom',
            ),
            const SizedBox(
              height: 20,
            ),
            const HrCustomTextFormField(
              textInputType: TextInputType.text,
              labelText: 'Prénom',
              errorText: 'Erreur',
            ),
            const SizedBox(
              height: 20,
            ),
            const HrCustomAutocompleteTextFormField(
              textInputType: TextInputType.text,
              labelText: 'Ville',
              suggestions: ['Paris', 'Lyon', 'Marseille'],
            ),
            const SizedBox(
              height: 20,
            ),
            HrCustomDropdownFormField(
              labelText: 'Sexe',
              text: text,
              list: const ['Homme', 'Femme'],
              onChanged: (String? value) {
                setState(() {
                  text = value ?? 'Homme';
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            HrCustomButtonFormField(
              labelText: 'Valider',
              press: () {
                if (kDebugMode) {
                  print('Pressed');
                }
              },
              text: 'Valider',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
