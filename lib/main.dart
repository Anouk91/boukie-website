import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'text_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boukies website',
      color: Colors.white,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      //   useMaterial3: true,
      // ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var deviceScreenWidth = MediaQuery.of(context).size;

    var user = 'info';
    var domain = 'trendingtrash.nl';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffbed627b).withOpacity(.2),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0), // Add bottom padding
              child: Image.asset(
                'assets/logolang.png',
                height: 40, // Adjust the height as needed
              ),
            ),
            Text(
              " Privacy Policy & Support page",
              style: GoogleFonts.istokWeb(
                textStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceScreenWidth.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text('Effective Date: 1-2-2025\n\n',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      // MainAxisAlignment: MainAxisAlignment.end,
                    ))
              ]),
              const TextComponent(
                text:
                    'At Boukie, we are committed to protecting your privacy. This Privacy Policy outlines how Boukie handles your data and ensures that your personal information remains private and secure.\n\n',
              ),
              const TextComponent(
                text: '1. Introduction\n',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const TextComponent(
                text:
                    'Boukie is a diary application that values your privacy. All your data is stored locally on your device using the Flutter Hive database. We do not collect, store, or transmit any of the data created with or given to this app to external servers or third parties.\n\n',
              ),
              const TextComponent(
                text: '2. Data Collection\n',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const TextComponent(
                text: 'What we don’t collect:\n\n'
                    '- Boukie does not collect any personal data, including your name, email address, or any diary entries.\n'
                    '- We do not track your usage or activity within the app.\n\n'
                    'What is stored:\n'
                    '- All diary entries and related data are stored locally on your device using the Flutter Hive database.\n\n',
              ),
              const TextComponent(
                text: '3. Data Usage\n\n',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const TextComponent(
                text:
                    'Since Boukie does not collect or store your data externally, all your information remains on your device and is used solely to provide the features of the app, such as saving, viewing, updating or deleting the data.\n\n',
              ),
              const TextComponent(
                text: '4. Data Security\n\n',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const TextComponent(
                text: 'Boukie takes the following measures to ensure the security of your data:\n\n'
                    '- Local Storage: All data is saved locally on your device and is not transmitted to any server.\n'
                    '- Encryption: Flutter Hive uses built-in encryption options to secure your data. It is recommended to enable device-level security, such as PINs, passwords, or biometric locks, to further protect your information.\n\n',
              ),
              const TextComponent(
                text: '5. Your Responsibilities\n\n',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const TextComponent(
                text: 'As your data is stored locally, it is your responsibility to:\n\n'
                    '- Keep your device secure.\n'
                    '- Regularly back up your data if necessary. Boukie does not offer cloud backup services.\n'
                    '- Ensure your app is updated to the latest version to benefit from the latest security improvements.\n\n',
              ),
              const TextComponent(
                text: '6. Third-Party Services\n\n',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const TextComponent(
                text:
                    'Boukie does only integrates with Health data from your Android or apple device if you allow it to. It then only retrieves the data, it does not change data elsewhere. There are no other third-party services or analytics tools used. Your data remains completely private and is not shared with anyone.\n\n',
              ),
              const TextComponent(
                text: '7. Changes to This Privacy Policy\n\n',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const TextComponent(
                text:
                    'Boukie may update this Privacy Policy from time to time. If changes are made, the updated policy will be reflected in the app, and the "Effective Date" will be revised accordingly. Please review this policy periodically to stay informed about how your data is protected.\n\n',
              ),
              const TextComponent(
                text: '8. Contact Us\n\n',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              TextComponent(
                text:
                    'If you have any questions or concerns about this Privacy Policy or boukie in general, please contact us:\n\n'
                    '- by leaving a message at the Play Store or App Store\n'
                    '- or send an email: $user@$domain\n\n'
                    'Thank you for choosing Boukie as your trusted diary app. Your privacy is our priority.',
              ),

              //OR
              //'<a href="mailto:' + user + '@' + domain + '">Email</a>'
            ],
          ),
        ),
      ),
    );
  }
}
