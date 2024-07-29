import 'package:flutter/material.dart';
import 'package:epitome2/studenthome.dart';
import 'package:firebase_core/firebase_core.dart';

//void main() => runApp(const MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'data',
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GRIET')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {}, child: Text('Login as faculty')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Shome()),
                      );
                    },
                    child: Text('Login as student')),
              ],
            ),
          ),
        ));
  }
}
