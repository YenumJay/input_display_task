import 'package:flutter/material.dart';
import 'package:input_display/home.dart';
import 'package:input_display/form_input_view.dart';
import 'package:input_display/result_input_display.dart';
import 'package:input_display/loading.dart';
//import 'package:input_display/name_validator.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/input': (context) => InputDetails(),
          '/display': (context) => DisplayDetails(),
        }));

