// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app.dart';

class Routes {
  static const String productScreen = '/product-screen';
  static const String profileScreen = '/profile-screen';
  static const String productsScreen = '/';
  static const all = <String>{
    productScreen,
    profileScreen,
    productsScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.productScreen, page: ProductScreen),
    RouteDef(Routes.profileScreen, page: ProfileScreen),
    RouteDef(Routes.productsScreen, page: ProductsScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ProductScreen: (data) {
      final args = data.getArgs<ProductScreenArguments>(
        orElse: () => ProductScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductScreen(
          key: args.key,
          product: args.product,
        ),
        settings: data,
      );
    },
    ProfileScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ProfileScreen(),
        settings: data,
      );
    },
    ProductsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ProductsScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ProductScreen arguments holder class
class ProductScreenArguments {
  final Key key;
  final Product product;
  ProductScreenArguments({this.key, this.product});
}
