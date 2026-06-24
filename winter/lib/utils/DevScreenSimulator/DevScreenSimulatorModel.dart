import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:winter/winter.dart';

class DevScreenSimulatorModel implements WinterModel {
  final Size targetScreenResolution;
  //final Size currentScreenResolution;
  final double targetScreenPPI;
  final double currentScreenPPI;
  final Widget child;
  DevScreenSimulatorModel({
    required this.child,
    //    required this.currentScreenResolution,
    required this.currentScreenPPI,
    required this.targetScreenResolution,
    required this.targetScreenPPI,
  });
  double getCurrentScreenPPI() {
    //get current screen info for wayland
    var result = Process.runSync("wlr-randr", ["--json"]);
    Map<String, dynamic> screen_info = jsonDecode(result.stdout.toString())[0];
    //calculate resolution area
    Map<String, dynamic> current_mode = (screen_info["modes"] as List).first;
    //calculate dpi
    var ppi = calculatePPI(
      Size(
        screen_info["physical_size"]!["width"] * 1.0,
        screen_info["physical_size"]!["height"] * 1.0,
      ),
      Size(current_mode["width"] * 1.0, current_mode["height"] * 1.0),
    );
    print(ppi);
    return ppi;
  }

  double inch_to_mm(double inch) {
    return inch * 25.4;
  }

  double mm_to_inch(double mm) {
    return mm / 25.4;
  }

  double diagonalLength(double width, double height) {
    return sqrt((pow(width, 2) + pow(height, 2)));
  }

  //double calculateDPI(Size physical_size, Size resolution) {
  //  double physical_area = mm_to_inch(
  //    physical_size.width * physical_size.height,
  //  );
  //  double resolution_area = resolution.width * resolution.height;
  //  return resolution_area / physical_area;
  //}

  double calculatePPI(Size physical_size, Size resolution) {
    double physical_length = mm_to_inch(
      diagonalLength(physical_size.width, physical_size.height),
    );
    double resolution_length = diagonalLength(
      resolution.width,
      resolution.height,
    );

    return resolution_length / physical_length;
  }

  Size calculateTargetResolution() {
    //double ppi = getCurrentScreenPPI();
    double ppi = currentScreenPPI;
    double width = targetScreenResolution.width * ppi / targetScreenPPI;
    double height = targetScreenResolution.height * ppi / targetScreenPPI;
    return Size(width, height);
  }
}
