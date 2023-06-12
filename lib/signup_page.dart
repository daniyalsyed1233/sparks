// import 'package:flutter/material.dart';
// import 'package:social_media_app/reusable_widget.dart';

// class SignupPage extends StatefulWidget {
//   const SignupPage({super.key});

//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   final TextEditingController _passwordTextController = TextEditingController();
//   final TextEditingController _emailTextController = TextEditingController();
//   final TextEditingController _UserTextController = TextEditingController();
//   final TextEditingController _PhoneTextController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.cyanAccent,
//         title: const Text("SocialEagles"),
//       ),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration:
//             const BoxDecoration(color: Color.fromARGB(255, 82, 229, 252)),
//         child: SingleChildScrollView(
//             child: Padding(
//           padding: EdgeInsets.fromLTRB(
//               20, MediaQuery.of(context).size.height * 0.1, 20, 0),
//           child: Column(
//             children: <Widget>[
//               logoWidget("assets/gg.jpeg"),
//               const Text(
//                 "SignUp",
//                 style: TextStyle(
//                     height: 0, fontWeight: FontWeight.bold, fontSize: 100),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               reusableTextField("Enter UserName", Icons.person_outline, false,
//                   _emailTextController),
//               const SizedBox(
//                 height: 20,
//               ),
//               reusableTextField("Enter Password", Icons.lock_outline, true,
//                   _passwordTextController),
//               const SizedBox(
//                 height: 20,
//               ),
//               reusableTextField("Enter UserName", Icons.verified_user_outlined,
//                   false, _UserTextController),
//               const SizedBox(
//                 height: 20,
//               ),
//               reusableTextField("Enter PhoneNUmber", Icons.phone_android, false,
//                   _PhoneTextController),
//               const SizedBox(
//                 height: 20,
//               ),
//               signInSignUpButton(context, true, () {
//                 Navigator.pushNamed(context, "/home");
//               }),
//               const Row(
//                 children: [
//                   Text('fb'),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Text('google'),
//                   SizedBox(
//                     width: 5,
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               )
//             ],
//           ),
//         )),
//       ),
//     );
//   }
// }
