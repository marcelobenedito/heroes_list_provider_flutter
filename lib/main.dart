import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:heroes_list_provider/heroes_controller.dart';
import 'package:heroes_list_provider/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HeroesController>.value(value: HeroesController(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeWidget(),
      ),
    );
  }
}