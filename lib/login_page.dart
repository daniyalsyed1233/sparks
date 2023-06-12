
// import 'package:flutter/material.dart';

// import 'DDI_image.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Social Eagles"),
//           backgroundColor: const Color.fromARGB(255, 198, 240, 246),
//         ),
//         body: Stack(
//           fit: StackFit.expand,
//           children: <Widget>[
//             const DDImage(),
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SingleChildScrollView(
//                   child: Card(
//                     child: Column(
//                       children: <Widget>[
//                         Form(
//                             child: Padding(
//                           padding: const EdgeInsets.all(16.0),
//                           child: Column(
//                             children: <Widget>[
//                               TextFormField(
//                                 decoration: const InputDecoration(
//                                     hintText: "Enter UserName",
//                                     labelText: "UserName"),
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                               TextFormField(
//                                 obscureText: true,
//                                 decoration: const InputDecoration(
//                                     hintText: "Enter Password",
//                                     labelText: "Password"),
//                               )
//                             ],
//                           ),
//                         )),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(16.0),
//                           child: ElevatedButton(
//                             style: ButtonStyle(
//                                 backgroundColor:
//                                     MaterialStateProperty.all(Colors.orange)),
//                             onPressed: () {
//                               //Navigator.push(
//                               //  context,
//                               //MaterialPageRoute(
//                               //  builder: (context) => HomePage()));
//                               Navigator.pushNamed(context, "/home");
//                             },
//                             child: const Text("Log In"),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         InkWell(
//                           child: const Text(
//                             "Don't have an account? SignUp",
//                             style: TextStyle(fontSize: 20),
//                           ),
//                           onTap: () {
//                             Navigator.pushNamed(context, "/signup");
//                           },
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ));
//   }
// }
