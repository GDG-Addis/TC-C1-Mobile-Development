import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedCubit.storage = await HydratedStorage.build();
  registerDependencies();
  runApp(const Application());
}
