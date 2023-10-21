import 'dart:io';

import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

import 'config/router/my_router.dart';
import 'injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await windowManager.ensureInitialized();

    WindowOptions windowOptions = const WindowOptions(
      size: Size(1200, 800),
      center: true,
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.hidden,
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // var size=MediaQuery.of(context).size;
    return MultiProvider(
        providers: [
          Provider<MyRouter>(
            lazy: false,
            create: (BuildContext createContext) => MyRouter(),
          )
        ],
        child: Builder(builder: (BuildContext context) {
          final _router = Provider.of<MyRouter>(context, listen: false).router;
          return MaterialApp.router(
            routerConfig: _router,
            title: 'Material App',
            theme: ligthTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.dark,
            // home: HomeScreen(),
            // routes: routes,
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}


// import 'package:example/radar_chart/radar_chart_page.dart';
// import 'package:example/scatter_chart/scatter_chart_page.dart';
// import 'package:flutter/material.dart';

// import 'bar_chart/bar_chart_page.dart';
// import 'bar_chart/bar_chart_page2.dart';
// import 'bar_chart/bar_chart_page3.dart';
// import 'line_chart/line_chart_page.dart';
// import 'line_chart/line_chart_page2.dart';
// import 'line_chart/line_chart_page3.dart';
// import 'line_chart/line_chart_page4.dart';
// import 'pie_chart/pie_chart_page.dart';
// import 'utils/platform_info.dart';
// import 'scatter_chart/scatter_chart_page.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'FlChart Demo',
//       showPerformanceOverlay: false,
//       theme: ThemeData(
//         primaryColor: const Color(0xff262545),
//         primaryColorDark: const Color(0xff201f39),
//         brightness: Brightness.dark,
//       ),
//       home: const MyHomePage(title: 'fl_chart'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentPage = 0;

//   final _controller = PageController(initialPage: 0);
//   final _duration = const Duration(milliseconds: 300);
//   final _curve = Curves.easeInOutCubic;
//   final _pages = const [
//     LineChartPage(),
//     BarChartPage(),
//     BarChartPage2(),
//     PieChartPage(),
//     LineChartPage2(),
//     LineChartPage3(),
//     LineChartPage4(),
//     BarChartPage3(),
//     ScatterChartPage(),
//     RadarChartPage(),
//   ];

//   bool get isDesktopOrWeb => PlatformInfo().isDesktopOrWeb();

//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(() {
//       setState(() {
//         _currentPage = _controller.page!.round();
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: PageView(
//           physics: isDesktopOrWeb
//               ? const NeverScrollableScrollPhysics()
//               : const AlwaysScrollableScrollPhysics(),
//           controller: _controller,
//           children: _pages,
//         ),
//       ),
//       bottomNavigationBar: isDesktopOrWeb
//           ? Container(
//               padding: const EdgeInsets.all(16),
//               color: Colors.transparent,
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Visibility(
//                     visible: _currentPage != 0,
//                     child: FloatingActionButton(
//                       onPressed: () => _controller.previousPage(
//                           duration: _duration, curve: _curve),
//                       child: const Icon(Icons.chevron_left_rounded),
//                     ),
//                   ),
//                   const Spacer(),
//                   Visibility(
//                     visible: _currentPage != _pages.length - 1,
//                     child: FloatingActionButton(
//                       onPressed: () => _controller.nextPage(
//                           duration: _duration, curve: _curve),
//                       child: const Icon(Icons.chevron_right_rounded),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           : null,
//     );
//   }
// }




 
