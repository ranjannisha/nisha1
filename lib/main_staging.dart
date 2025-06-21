import 'package:nisha1/bootstrap.dart';
import 'package:nisha1/src/app/presentation/view/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env-staging');
  await bootstrap(() => const App());
}
