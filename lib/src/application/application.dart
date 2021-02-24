import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:techamp_flutter_shopping_app/app.dart';

class Application extends StatelessWidget {
  const Application({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech camp Flutter',
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator.builder(router: Router()),
    );
  }
}
