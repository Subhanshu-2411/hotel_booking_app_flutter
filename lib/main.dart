import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_booking_app_flutter/motel_app.dart';
import 'package:hotel_booking_app_flutter/providers/theme_provider.dart';
import 'package:hotel_booking_app_flutter/utils/themes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(_setAllProviders()));
}

Widget _setAllProviders() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(
          state: AppTheme.getThemeData,
        ),
      ),
    ],
    child: MotelApp(),
  );
}
