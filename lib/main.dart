import 'package:flutter/material.dart';
import 'package:flutter_property_finder/models/property_scoped_model.dart';
import 'package:flutter_property_finder/screens/search_screen.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final PropertyScopedModel propertyScopedModel = PropertyScopedModel();

  @override
  Widget build(BuildContext context) {
    propertyScopedModel.getProperties();

    return ScopedModel<PropertyScopedModel>(
        model: propertyScopedModel,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Property Finder",
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            accentColor: Colors.deepOrange,
          ),
          home: SearchScreen(),
        ));
  }
}
