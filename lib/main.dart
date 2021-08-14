import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/services/local_storage_service.dart';
import '/models/app_theme.dart';
import '/models/counter.dart';
import '/screens/home/home.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await store.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppTheme(isDark: store.get("isDark"))),
        ChangeNotifierProvider(create: (_) => Counter())
      ],
      child: Main(),
    ),
  );
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appTheme = Provider.of<AppTheme>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme.lightTheme,
      darkTheme: appTheme.darkTheme,
      home: Home(title: 'MyApp'),
      themeMode: appTheme.isDark ? ThemeMode.dark : ThemeMode.light,
    );
  }
}