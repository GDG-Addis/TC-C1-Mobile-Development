import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

export 'router.gr.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: CartScreen),
  MaterialRoute(page: ProductScreen),
  MaterialRoute(page: ProfileScreen),
  MaterialRoute(page: ProductsScreen, initial: true),
])
class $Router {}

extension ExtendedNavigatorX on BuildContext {
  ExtendedNavigatorState get navigator => ExtendedNavigator.of(this);
}
