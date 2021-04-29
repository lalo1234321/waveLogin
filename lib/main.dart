import 'package:betatindog/helpers/home_view.dart';
import 'package:betatindog/pages/home_page.dart';
import 'package:betatindog/pages/login_page.dart';
import 'package:betatindog/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (BuildContext context ) => HomeView())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'home' : (BuildContext context) => HomePage(),
          'login': ( BuildContext context ) => LoginPage(),
          'register' : (BuildContext context) => RegisterPage()
        },
      ),
    );
  }
}