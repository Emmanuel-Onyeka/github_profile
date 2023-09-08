import 'package:flutter/material.dart';
import 'package:photo_card_hng/screens/web_screen.dart';
import 'package:photo_card_hng/styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void openWebpage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const WebScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/profile.jpg',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Onyeka Emmanuel',
                textAlign: TextAlign.center,
                style: appStyle(size: 24, fw: FontWeight.w900),
              ),
              const SizedBox(height: 10),
              Text(
                'Display Name: Onyeka',
                textAlign: TextAlign.center,
                style: appStyle(size: 16, fw: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Text(
                'https://github.com/Emmanuel-Onyeka',
                textAlign: TextAlign.center,
                style: appStyle(size: 16, fw: FontWeight.w500),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width * 0.6,
                child: ElevatedButton(
                  onPressed: () => openWebpage(context),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: Text(
                    'Open github',
                    style: appStyle(
                        size: 16, fw: FontWeight.w600, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
