import 'package:flower_sunset/intro.dart';
import 'package:flower_sunset/login.dart';
import 'package:flower_sunset/signPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'firebase_options.dart';
import 'donateItem.dart';
import 'donateList.dart';
import 'shopping.dart';
import 'myPage.dart';
import 'home.dart';

// realtime 데이터베이스 주소 - https://flowersunset-f64ab-default-rtdb.firebaseio.com/
// admop 앱 ID - ca-app-pub-5402180914574622~4744673606

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flower Sunset',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LoginPage(),
      //   '/sign': (context) => SignUpPage(),
      //   '/home': (context) => HomePage(),
      // },
      home: IntroPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController? controller;
  List<Senior> seniorList = new List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);

    seniorList.add(Senior(seniorName: "이영자 어르신", seniorDetail: "배고픔보다 정이 고파요",
        imagePath: "repo/images/profile.png"));
    seniorList.add(Senior(seniorName: "이영자 어르신", seniorDetail: "배고픔보다 정이 고파요",
        imagePath: "repo/images/profile.png"));
    seniorList.add(Senior(seniorName: "이영자 어르신", seniorDetail: "배고픔보다 정이 고파요",
        imagePath: "repo/images/profile.png"));
    seniorList.add(Senior(seniorName: "이영자 어르신", seniorDetail: "배고픔보다 정이 고파요",
        imagePath: "repo/images/profile.png"));
    seniorList.add(Senior(seniorName: "이영자 어르신", seniorDetail: "배고픔보다 정이 고파요",
        imagePath: "repo/images/profile.png"));
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
          children: <Widget>[HomePage(), DonateList(), ShoppingPage(), MyPage(),],
          // list: seniorList
          controller: controller,
        ),
        bottomNavigationBar: TabBar(tabs: <Tab>[
          Tab(icon: Icon(Icons.home_outlined, color: Color(0xffF87366),)),
          Tab(icon: Icon(Icons.volunteer_activism_outlined, color: Color(0xffF87366),)),
          Tab(icon: Icon(Icons.shopping_bag_outlined, color: Color(0xffF87366),)),
          Tab(icon: Icon(Icons.person_outline_outlined, color: Color(0xffF87366),))
        ], controller: controller,),
    );
  }
}
