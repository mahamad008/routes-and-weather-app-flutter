import 'package:flutter/material.dart';
import 'package:qrcode/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Routing simple app',
      home: Home(),
    //  initialRoute: '/',
    //  routes: {
    // '/':(context)=>HomeScreen(),
    // '/second':(context)=>SecondScreen(),
    // '/third':(context)=>ThirdScreen()
    //  },
    );
  }
}

// MaterialPageRoute(builder:(_)=>const seach())
// Home Screen
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Screen")),
//       body: Center(
//         child: ElevatedButton(onPressed: (){
//           Navigator.pushNamed(context, '/second');
//         }, child: Text('Go To second Screen')),
//       ),
//     );
//   }
// }

// Second Screen
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Second Screen")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context,'/third');
//           },
//           child: Text("Go to Third Screen"),
//         ),
//       ),
//     );
//   }
// }
// class ThirdScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(title: Text('Third Screen')),
//       body: Center(
//         child: ElevatedButton(onPressed: (){
//           Navigator.pushNamed(context,'/');
//         }, child: Text('Go Back')),
//       ),
//     );
//   }
// }