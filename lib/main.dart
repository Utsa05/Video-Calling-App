import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_call_app/video_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const VideoCallApp());
}
