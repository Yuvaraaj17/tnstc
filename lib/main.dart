import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:tnstc/stopslistProvider.dart';
import 'firebase_options.dart';
import 'package:tnstc/widgets/drawer.dart';
import 'package:tnstc/widgets/routeSearchContainer.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context)=>StopsListProvider())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
          home: SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  iconTheme: const IconThemeData(color: Colors.white),
                  backgroundColor: Colors.deepPurple,
                  title: const Text("Tnstc",style: TextStyle(color: Colors.white)),
                ),
                body: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 35),
                        width: MediaQuery.sizeOf(context).width,
                        height: 200,
                        color: Colors.deepPurple,
                        child: const Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            RouteSearchContainer(),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: InkWell(child:Icon(Icons.swap_vert_circle_rounded,size: 40,color: Colors.deepPurple,)),
                            )
                          ],
                        )
                    ),
                  ],
                ),
              )
          )
      ),
    );
  }
}