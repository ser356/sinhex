import 'package:flutter/material.dart';

class DataHandler {
  List<Image> userProjects = [];
  List<Image> recentProjects = [];

  String defaultpfp = 'assets/pfp.png';

  setDefaultpfp(s) {
    defaultpfp = s;
  }

  DataHandler();
}
