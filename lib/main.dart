import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlo_mobx/screens/base/base_screen.dart';
import 'package:xlo_mobx/stores/category_store.dart';
import 'package:xlo_mobx/stores/connectivity_store.dart';
import 'package:xlo_mobx/stores/favorite_store.dart';
import 'package:xlo_mobx/stores/home_store.dart';
import 'package:xlo_mobx/stores/page_store.dart';
import 'package:xlo_mobx/stores/user_manager_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());

  /*await Parse().initialize(
    'fdrGLe862vjbuqJUc3VJqtMMmSRlhiAMGIuSzrfJ',
    'https://parseapi.back4app.com/',
    clientKey: 'uFCXkIXFfX81JGu12wVZCUaSK1a97lh7YSoTCFwt',
    autoSendSessionId: true,
    debug: true,
  );*/

  /*final category = ParseObject('Categories')
    ..set('Title', 'Camisetas')
    ..set('Position', 2);

  final response = await category.save();

  print(response.success);*/

  /*final category = ParseObject('Categories')
    ..set<String>('Title', 'Meias')
    ..set<int>('Position', 1);

  final response = await category.save();

  print(response.success);*/

  /*final category = ParseObject('Categories')
    ..objectId = 'gqKmQR4DtT'
    ..set('Position', 3);

  final response = await category.save();

  print(response.success);*/

  /*final category = ParseObject('Categories')
    ..objectId = 'gqKmQR4DtT';

  category.delete();*/

  /*final response = await ParseObject('Categories').getObject('jOtqSkcMSB');
  if(response.success){
    print(response.success);
  }*/

  /*final response = await ParseObject('Categories').getAll();
  if(response.success) {
    for(final object in response.result){
      print(object);
    }
  }*/

  /*final query = QueryBuilder(ParseObject('Categories'));

  //query.whereEqualTo('Position', 2);
  query.whereContains('Title', 'Blusas');
  query.whereEqualTo('Position', 2);

  final response = await query.query();

  if(response.success){
    print(response.result);
  }*/
}

void setupLocators() {
  GetIt.I.registerSingleton(ConnectivityStore());
  GetIt.I.registerSingleton(PageStore());
  GetIt.I.registerSingleton(HomeStore());
  GetIt.I.registerSingleton(UserManagerStore());
  GetIt.I.registerSingleton(CategoryStore());
  GetIt.I.registerSingleton(FavoriteStore());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'fdrGLe862vjbuqJUc3VJqtMMmSRlhiAMGIuSzrfJ',
    'https://parseapi.back4app.com/',
    clientKey: 'uFCXkIXFfX81JGu12wVZCUaSK1a97lh7YSoTCFwt',
    autoSendSessionId: true,
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.purple,
        appBarTheme: AppBarTheme(elevation: 0),
        cursorColor: Colors.orange,
      ),
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: BaseScreen(),
    );
  }
}
