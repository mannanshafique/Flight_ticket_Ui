import 'package:flight_ticket_ui/theme.dart';
import 'package:flutter/material.dart';
import 'Pages/PlaneTicketListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor, // staus bar color
      ),
      home: PlaneTicketListPage(),
    );
  }
}

// class Practice extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             children: <Widget>[
//               Text("hello"),
//               Container(
//                   color: Colors.blue,
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Expanded(
//                         child: Container(
//                             color: Colors.amber,
//                             child: TextField(
//                               decoration: InputDecoration(),
//                             )),
//                       )
//                     ],
//                   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
