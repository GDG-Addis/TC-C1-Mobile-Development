import 'package:auto_route/auto_route_annotations.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

export 'router.gr.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomeScreen, initial: true),
])
class $Router {}
