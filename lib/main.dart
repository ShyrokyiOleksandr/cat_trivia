import 'package:cat_trivia/presentation/app/cat_trivia_app.dart';
import 'package:cat_trivia/service_locator/app_service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppServiceLocator.setup();
  runApp(const CatTriviaApp());
}
