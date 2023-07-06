import 'dart:async';
import 'package:counterapp_flavors/app_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<Widget> initializeApp(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return MyApp(appConfig);
}

class MyApp extends StatelessWidget {
  final AppConfig appConfig;
  const MyApp(this.appConfig);

  Widget _flavorBanner(Widget child) {
    return Banner(
      child: child,
      location: BannerLocation.topEnd,
      message: appConfig.flavor,
      color: appConfig.flavor == 'dev' ? Colors.red.withOpacity(0.6) : Colors.green.withOpacity(0.6),
      textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.0, letterSpacing: 1.0),
      textDirection: TextDirection.ltr,
    );
  }

  @override
  Widget build(BuildContext context) {
    MaterialApp materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: appConfig.flavor == 'dev' ? Colors.yellow : Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _flavorBanner(
        MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
    return materialApp;
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    getPackage();
    super.initState();
  }

  String dataOfApp = "";
  void getPackage() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appName = packageInfo.appName;
    String packageName = packageInfo.packageName;
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    dataOfApp = "\n\nApp Name : $appName\n\nApp Package Name: $packageName\n\nApp Version: $version\n\nApp build Number: $buildNumber";
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              dataOfApp,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
