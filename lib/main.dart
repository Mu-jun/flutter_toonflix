import 'package:flutter/material.dart';
import 'package:flutter_toonflix/widgets/button.dart';
import 'package:flutter_toonflix/widgets/current_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '\$5 194 382',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: 'Transfer',
                          textColor: Colors.black,
                          backgroundColor: Color(0xFFF2B33A),
                        ),
                        Button(
                          text: 'Request',
                          textColor: Colors.white,
                          backgroundColor: Color(0xFF1F2123),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 75),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const CurrentCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_symbol,
                ),
                Transform.translate(
                  offset: const Offset(0, -45),
                  child: const CurrentCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '55 622',
                    icon: Icons.monetization_on_outlined,
                    isIverted: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -90),
                  child: const CurrentCard(
                    name: 'Rupee',
                    code: 'INR',
                    amount: '28 981',
                    icon: Icons.currency_rupee,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
