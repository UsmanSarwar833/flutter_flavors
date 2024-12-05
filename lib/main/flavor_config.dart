import 'package:flutter/material.dart';

enum Environment { dev, uat, prod }

abstract class AppEnvironment {
  static late String baseUrl;
  static late String environmentName;

  static late Environment _environment;

  static Environment get environment => _environment;

  static setUp(Environment environment) {
    switch (environment) {
      case Environment.dev:
        baseUrl = "Dev_BASE_URL";
        environmentName = "dev";
        break;
      case Environment.uat:
        baseUrl = "Uat_BASE_URL";
        environmentName = "uat";
        break;
      case Environment.prod:
        baseUrl = "Prod_BASE_URL";
        environmentName = "prod";
        break;

        default:
        baseUrl = "";
        environmentName = "default";
        break;

    }
  }
}
