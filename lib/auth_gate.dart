import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            providerConfigs: const [
              EmailProviderConfiguration(),
              GoogleProviderConfiguration(
                  clientId:
                      '738249251640-08i8fgh1in7lt44db97gonbgqpj3c47e.apps.googleusercontent.com'),
            ],
            headerBuilder: (context, constraints, shrinkOffset) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/gg.png'),
                ),
              );
            },
            subtitleBuilder: (context, action) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: action == AuthAction.signIn
                    ? const Text('Welcome to Social Eagles, please sign in!')
                    : const Text('Welcome to Social Eagles, please sign up!'),
              );
            },
            footerBuilder: (context, action) {
              return const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'By signing in, you agree to our terms and conditions.',
                  style: TextStyle(color: Colors.grey),
                ),
              );
            },
            sideBuilder: (context, shrinkOffset) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/sp.png'),
                ),
              );
            },
          );
        }

        return ProfileScreen(
          appBar: AppBar(
            title: const Text('User Profile'),
          ),
          actions: [
            SignedOutAction((context) {
              Navigator.pushReplacementNamed(context, "/login");
            })
          ],
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(2),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset('assets/sp.png'),
              ),
            ),
          ],
        );
      },
    );
  }
}
