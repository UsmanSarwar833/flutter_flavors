

import 'package:flutter/material.dart';
import 'package:flutter_flavor/main/flavor_config.dart';
import 'package:flutter_flavor/main/common%20_main.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  AppEnvironment.setUp(Environment.uat);
  commonMain();

}